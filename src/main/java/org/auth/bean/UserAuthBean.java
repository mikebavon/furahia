package org.auth.bean;

import org.apache.log4j.Logger;
import org.auth.dao.UserAuthDao;
import org.auth.exception.InvalidUserException;
import org.auth.exception.UserAccountLockedException;
import org.auth.model.PasswordVO;
import org.auth.model.User;
import org.auth.model.UserAuth;
import org.auth.model.UserRestDto;
import org.auth.service.Md5hashGenerator;
import org.common.exception.ApplicationException;
import org.common.model.Status;
import org.common.model.YesNo;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;
import java.util.List;
import java.util.UUID;


/**
 * Created by fastlane on 8/10/16.
 */

@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class UserAuthBean implements UserAuthBeanI{

    private Logger logger = org.apache.log4j.Logger.getLogger(getClass());
    @PersistenceContext
    private EntityManager em;

    @Inject
    private UserAuthDao authenDao;

    @Inject
    private Md5hashGenerator md5;

    @PostConstruct
    private void init() {
        authenDao.setEm(em);
    }

    @SuppressWarnings("static-access")
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public UserAuth save(User user) throws Exception {
        UserAuth userAuthentication = new UserAuth();
        String password = md5.MD5(user.getPassword());
        userAuthentication.setOrigPassword(password);
        userAuthentication.setBaseCreatedTime(new Date());
        userAuthentication.setPassword(md5.MD5(UserBean.password));
        userAuthentication.setUsername(UserBean.username);
        userAuthentication.setStatus(Status.ACTIVE);
        userAuthentication.setUser(user);

        return authenDao.save(userAuthentication);
    }

    @SuppressWarnings("static-access")
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public UserAuth save(User user, UserAuth userAuthentication) throws Exception {
        String username = userAuthentication.getUsername();
        String password = md5.MD5(userAuthentication.getPassword());
        userAuthentication.setOrigPassword(password);
        userAuthentication.setPassword(password);
        userAuthentication.setUsername(username);
        userAuthentication.setStatus(Status.ACTIVE);
        userAuthentication.setUser(user);

        return authenDao.save(userAuthentication);
    }

    @SuppressWarnings("static-access")
    @Override
    public UserAuth authenticateUser(String username, String password) throws Exception{
        logger.info("This  is the password"+ password);

        List<UserAuth> authenticate
                = authenDao.find(username, md5.MD5(password) );

        if(authenticate.size() != 1 || authenticate.get(0) == null)
            throw new InvalidUserException();

        if(authenticate.get(0).getUser().getLocked() == YesNo.YES)
            throw new UserAccountLockedException();

        //load user!!
        authenticate.get(0).getUser().getId();

        return authenticate.get(0);

    }

    @Override
    public boolean checkChangPassword(User user) {

        if(user == null || user.getId() == null)
            return false;

        List<UserAuth> checkAuthen = authenDao.find(user.getId());

        if(checkAuthen.size() != 1)
            return false;

        if(checkAuthen.get(0).getOrigPassword().equals(checkAuthen.get(0).getPassword()))
            return true;

        return false;
    }

    @SuppressWarnings("static-access")
    @Override
    public boolean changePassword(User user, PasswordVO passwordVO)
            throws Exception {

        List<UserAuth> checkAuthen =
                authenDao.find(user.getId(), md5.MD5(passwordVO.getOldPassword()));

        if(checkAuthen.size() != 1){
            throw new ApplicationException("Invalid current password!");

        }

        if(!passwordVO.getNewPassword().equals(passwordVO.getConfirmPassword())){
            throw new ApplicationException("Password do not match!");

        }

        checkAuthen.get(0).setPassword(md5.MD5(passwordVO.getNewPassword()));

        authenDao.save(checkAuthen.get(0));

        return true;
    }

    /**
     * @see UserAuthBeanI#resetPwd(Long[])
     */
    @SuppressWarnings("static-access")
    @Override
    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public boolean resetPwd(Long[] ids) throws Exception {
        int size = ids.length;

        String password = null;
        for(int idx = 0; idx < size; idx++){
            if(ids[idx] != null) {
                UserAuth auth = authenDao.findByUserId(ids[idx]);
                if(auth != null) {
                    password = md5.MD5(auth.getUsername());
                    auth.setOrigPassword(password);
                    auth.setPassword(password);
                    authenDao.save(auth);
                }
            }
        }

        return true;
    }

    /**
     * @see UserAuthBeanI#token()
     */
    @Override
    public String token() {
        return UUID.randomUUID().toString();
    }

}

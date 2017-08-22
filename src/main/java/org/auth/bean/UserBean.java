package org.auth.bean;

import javax.annotation.PostConstruct;
import javax.ejb.*;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.apache.log4j.Logger;
import org.auth.dao.UserDao;
import org.auth.model.User;
import org.auth.model.UserRestDto;
import org.auth.wrapper.UserWrapper;
import org.common.exception.ApplicationException;
import org.common.model.Status;
import org.common.model.YesNo;

import java.util.Date;

@Stateless
@Remote
@TransactionManagement(TransactionManagementType.CONTAINER)
public class UserBean implements UserBeanI{
	static String username, password;
	private Logger logger = Logger.getLogger(getClass());
	
	@PersistenceContext
	private EntityManager em;
	
	@Inject
	private UserDao userDao;
	
	@EJB
	private UserAuthBeanI userAuthenBean;
	
	@PostConstruct
	private void init() {
		userDao.setEm(em);
	}

	/**
	 * @see UserBeanI#save(User)
	 */
	@Override
	@TransactionAttribute(TransactionAttributeType.REQUIRED)
	public User save(User user) throws Exception {
		
		if(user.getLocked() == null)
			user.setLocked(YesNo.NO);
		
		if(user.getStatus() == null) 
			user.setStatus(Status.ACTIVE);
		
		boolean createAuthen = false;
		
		if(user.getId() == null)

			createAuthen = true;

		user = userDao.save(user);
		
		if(createAuthen){
			userAuthenBean.save(user);
		}
		
		user = userDao.save(user);
		
		return user;
	}
	
	@Override
	public User saveFromRestDto(UserRestDto userDto) throws Exception {
        username = userDto.getUsername();
        password = userDto.getPassword();


		if(userDto == null || userDto.getUsername() == null
                || userDto.getPassword() == null)
			throw new ApplicationException("Username/email, password and confirm password is required!!");
		
		User user = new User();
        user.setBaseCreatedTime(new Date());
		user.setUsername(username);
		user.setPassword(password);
		user.setPasswordConfirm(password);


		user = this.save(user);

		return user;
	}
	
	/**
	 * @see UserBeanI#findById(Long)
	 */
	@Override
	public User findById(Long id) {
		return userDao.findById(id);
		
	}

	/**
	 * @see UserBeanI#deleteBatchById(Long[])
	 */
	@Override
	@TransactionAttribute(TransactionAttributeType.REQUIRED)
	public boolean deleteBatchById(Long[] ids) throws Exception {
		userDao.delete(ids);
		return true;
	}

	/**
	 * @see UserBeanI#list()
	 */
	@SuppressWarnings("static-access")
	@Override
	public UserWrapper list() {
		UserWrapper wrapper = new UserWrapper();
		wrapper.setList(userDao.findByNamedQuery(userDao.FIND_ALL));
		wrapper.setCount(wrapper.getList().size());
		
		return wrapper;
	}

	/**
	 * @see UserBeanI#lock(Long[], YesNo)
	 */
	@Override
	@TransactionAttribute(TransactionAttributeType.REQUIRED)
	public boolean lock(Long[] ids, YesNo lock) throws Exception {
		int size = ids.length;
		
		for(int idx = 0; idx < size; idx++){
			if(ids[idx] != null) {
				User user = userDao.findById(ids[idx]);
				if(user != null) {
					user.setLocked(lock);
					userDao.save(user);
				}
			}
		}
		
		return true;
	}

}
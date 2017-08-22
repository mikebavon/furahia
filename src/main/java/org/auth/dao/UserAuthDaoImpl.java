package org.auth.dao;

import org.auth.model.UserAuth;
import org.common.dao.GenericDaoImpl;
import org.hibernate.criterion.Restrictions;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by fastlane on 8/10/16.
 */
public class UserAuthDaoImpl
        extends GenericDaoImpl<UserAuth, Long>
        implements UserAuthDao{

    @Override
    public List<UserAuth> find(Long userId, String pwd) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("userId", userId);
        params.put("pwd", pwd);

        return findByNamedQuery(UserAuth.NQ_FIND_BY_USER_ID_AND_PWD, params);
    }

    @Override
    public List<UserAuth> find(String username, String pwd) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("uName", username);
        params.put("pwd", pwd);

        return findByNamedQuery(UserAuth.NQ_FIND_BY_USERNAME_AND_PWD, params);

    }

    @Override
    public List<UserAuth> find(Long userId) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("uId", userId);

        return findByNamedQuery(UserAuth.NQ_FIND_BY_USER_ID, params);
    }

    @Override
    public UserAuth findByUserId(Long userId) {
        List<UserAuth> authens = findByCriteria(Restrictions.eq("user.id", userId));
        if(authens.isEmpty() || authens.get(0) == null)
            return null;

        return authens.get(0);
    }

}

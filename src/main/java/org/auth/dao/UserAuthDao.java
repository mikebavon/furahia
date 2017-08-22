package org.auth.dao;

import org.auth.model.UserAuth;
import org.common.dao.GenericDAO;

import java.util.List;

/**
 * Created by fastlane on 8/10/16.
 */
public interface UserAuthDao
        extends GenericDAO<UserAuth, Long> {

    public static String FIND_BY_USER_ID = "userAuthentication.findByUserId";

    public List<UserAuth> find(Long userId, String pwd);

    public List<UserAuth> find(String username, String pwd);

    public List<UserAuth> find(Long userId);

    UserAuth findByUserId(Long userId);

}
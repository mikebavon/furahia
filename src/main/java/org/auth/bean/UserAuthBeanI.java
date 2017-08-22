package org.auth.bean;

import org.auth.model.PasswordVO;
import org.auth.model.User;
import org.auth.model.UserAuth;
import org.auth.model.UserRestDto;

/**
 * Created by fastlane on 8/10/16.
 */
public interface UserAuthBeanI {

    /**
     * add user authentication
     *
     * @param user {@link User} to which authentication is to be added
     * @return {@link User} the saved instance
     * @throws Exception
     */
    UserAuth save(User user) throws Exception;

    /**
     * authenticate user
     *
     * @param username
     * @param password
     * @return {@link UserAuth}
     * authentication
     */
    UserAuth authenticateUser(String username, String password) throws Exception;

    /**
     *
     * @param user
     * @return {@link Boolean}
     */
    boolean checkChangPassword(User user);

    /**
     *
     * @param user
     * @param passwordVO
     * @return {@link Boolean}
     * @throws Exception
     */
    boolean changePassword(User user, PasswordVO passwordVO) throws Exception;

    /**
     *
     * @param user
     * @param userAuthentication
     * @return
     * @throws Exception
     */
    UserAuth save(User user, UserAuth userAuthentication)
            throws Exception;

    /**
     *
     * @param ids
     * @return
     * @throws Exception
     */
    boolean resetPwd(Long[] ids) throws Exception;

    /**
     * Get rando token
     *
     * @return
     */
    String token();
}

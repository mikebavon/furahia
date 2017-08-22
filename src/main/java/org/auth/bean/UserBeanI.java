package org.auth.bean;

import org.auth.model.User;
import org.auth.model.UserAuth;
import org.auth.model.UserRestDto;
import org.auth.wrapper.UserWrapper;
import org.common.model.YesNo;

public interface UserBeanI {

	/**
	 * add user
	 * 
	 * @param user {@link User} to be added
	 * @return {@link User} the saved instance
	 * @throws Exception
	 */
	public User save(User user) throws Exception;
	
	/**
	 * Finds user by id
	 * @param id find user by id
	 * @return {@link User} found
	 */
	public User findById(Long id);
	
	/**
	 * removes user by ids
	 * 
	 * @param ids the ids of users to be removed
	 * @return true if everything goes well
	 * @throws Exception
	 */
	public boolean deleteBatchById(Long ids []) throws Exception;
	
	/**
	 * list users
	 * 
	 * @return {@link UserWrapper} wrapper for found result
	 */
	public UserWrapper list();

	/**
	 * 
	 * @param ids
	 * @param lock
	 * @return
	 * @throws Exception
	 */
	boolean lock(Long[] ids, YesNo lock) throws Exception;

	/**
	 * 
	 * @param user
	 * @return
	 * @throws Exception 
	 */
	User saveFromRestDto(UserRestDto user) throws Exception;
	
}
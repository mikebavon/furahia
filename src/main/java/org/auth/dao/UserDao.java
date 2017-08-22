package org.auth.dao;

import org.auth.model.User;
import org.common.dao.GenericDAO;

import java.util.List;

public interface UserDao
		extends GenericDAO<User, Long> {
	
	public static final String FIND_ALL = "User.findAll";
	
	public static final String FIND_BY_USER_PROFILE = "User.findByUserProfile";
	
	public List<User> findByUserProfile(Long profileId);
}
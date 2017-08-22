package org.auth.dao;

import org.auth.model.User;
import org.common.dao.GenericDaoImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserDaoImpl extends GenericDaoImpl<User, Long>
		implements UserDao{

	@Override
	public List<User> findByUserProfile(Long profileId) {
		Map<String, Object> params = new HashMap<>();
		params.put("profileId", profileId);
		
		return findByNamedQuery(FIND_BY_USER_PROFILE, params);
	}
}
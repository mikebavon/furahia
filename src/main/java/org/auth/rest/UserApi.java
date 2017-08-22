package org.auth.rest;

import org.apache.log4j.Logger;
import org.auth.bean.UserBeanI;
import org.auth.model.UserRestDto;
import org.common.rest.BaseApi;

import javax.annotation.security.PermitAll;
import javax.ejb.EJB;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


@Path("/user")
public class UserApi extends BaseApi {
	Logger logger = Logger.getLogger(getClass());
	@EJB
	private UserBeanI userBean;



	@PermitAll
	@POST
	@Path("/save")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response add(UserRestDto user) {
		try {
			userBean.saveFromRestDto(user);
			return success();
		} catch (Exception e) {
			return failure(e.getMessage());
		}
	}






}
package org.auth.rest;

import org.auth.bean.UserAuthBeanI;
import org.auth.model.UserAuth;
import org.auth.model.UserRestDto;
import org.auth.service.Md5hashGenerator;
import org.common.rest.BaseApi;

import javax.annotation.security.PermitAll;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Created by ndikraxx on 9/7/16.
 */
@Path("/login")
public class LoginApi extends BaseApi {
    @EJB
    private UserAuthBeanI userAuthBean;

    @PermitAll
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response login(UserRestDto userRestDto) throws Exception {
        UserAuth userAuth = new UserAuth();
        userAuth.setUsername(userAuth.getUsername());
        userAuth.setPassword(userAuth.getPassword());
        String username = userRestDto.getUsername();
        String password = userRestDto.getPassword();
        try {

            return entity (userAuthBean.authenticateUser(username, password));
        } catch (Exception e) {
            return entity("{}");
        }
    }

}

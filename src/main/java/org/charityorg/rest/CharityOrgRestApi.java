package org.charityorg.rest;

import org.charityorg.bean.CharityOrgBeanI;
import org.charityorg.model.CharityOrg;
import org.charityorg.wrapper.CharityOrgWrapper;
import org.common.rest.BaseApi;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Created by fastlane on 8/4/16.
 */

@Path("/charityorg")
public class CharityOrgRestApi extends BaseApi {

    @EJB
    private CharityOrgBeanI charityOrgBean;

    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(CharityOrg charityOrg){
        try {
            charityOrgBean.save(charityOrg);
            return success();
        } catch (Exception e) {
            return serverFailure();
        }
    }


    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/update")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response update(CharityOrg charityOrg){
        try {
            charityOrgBean.save(charityOrg);
            return success();
        } catch (Exception e) {
            return serverFailure();
        }
    }
    @RolesAllowed("DEFAULT")
    @GET
    @Path("load/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response load(
            @DefaultValue("0") @PathParam("id") Long id) throws Exception {
        CharityOrg charityOrg = new CharityOrg();
        charityOrg.setId(id);
        charityOrgBean.load(id);
        if(charityOrgBean.load(id) == null)
            return notFound();

        return entity(charityOrgBean.load(id));
    }

    @RolesAllowed("DEFAULT")
    @GET
    @Path("list")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(
            @QueryParam("start") long start,
          @QueryParam("limit") long limit) {
        CharityOrg charityOrg = new CharityOrg();

        return entity(charityOrgBean.list(start, limit, charityOrg));

    }
    @RolesAllowed("DEFAULT")
    @DELETE
    @Path("delete/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response delete(@PathParam("id") Long id) {
        try {
            charityOrgBean.delete(id);
            return success();
        } catch (Exception e) {

            return failure("Unable to delete!");
        }

    }
}

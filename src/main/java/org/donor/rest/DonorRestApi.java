package org.donor.rest;

import org.auth.model.UserAuth;
import org.common.rest.BaseApi;
import org.donor.bean.DonorBeanI;
import org.donor.model.Donor;
import org.donor.wrapper.DonorWrapper;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Created by fastlane on 8/4/16.
 */
@Path("/donor")
public class DonorRestApi  extends BaseApi {

    @EJB
    private DonorBeanI donorBean;

    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(Donor donor){
        try {
            donorBean.save(donor);
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
        Donor donor = new Donor();
        donor.setId(id);


        donorBean.load(id);
        if (donorBean.load(id)== null){
            return notFound();
        }
        else
            return(entity(donorBean.load(id)));
    }

    @RolesAllowed("DEFAULT")
    @GET
    @Path("list")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(
             @QueryParam("start") long start,
            @QueryParam("limit") long limit) {
        Donor donor = new Donor();

        return entity((DonorWrapper) donorBean.list(start, limit, donor));

    }
    @RolesAllowed("DEFAULT")
    @GET
    @Path("auth/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response auth(@PathParam("id") long id) {
        return entity((DonorWrapper) donorBean.authenticateUser(id));

    }

}
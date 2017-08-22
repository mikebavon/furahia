package org.pledge.rest;


import org.common.rest.BaseApi;
import org.pledge.bean.PledgeBeanI;
import org.pledge.model.Pledge;
import org.pledge.wrapper.PledgeWrapper;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


/**
 * Created by ndikraxx on 8/4/16.
 */

@Path("/pledge")
public class PledgeApi extends BaseApi{

    @EJB
    private PledgeBeanI pledgeBean;

    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(Pledge pledge) {

        try {
            pledgeBean.save(pledge);
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
        Pledge pledge = new Pledge();
        pledge.setId(id);
        pledgeBean.load(id);
        if (pledgeBean.load(id)== null){
            return notFound();
        }
        else
            return(entity(pledgeBean.load(id)));
    }


    @RolesAllowed("DEFAULT")
    @GET
    @Path("list")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(
            @QueryParam("start") long start,
            @QueryParam("limit") long limit) {
        Pledge pledge = new Pledge();
        return entity(pledgeBean.list(start, limit, pledge));

    }
    @RolesAllowed("DEFAULT")
    @DELETE
    @Path("delete/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response delete(@PathParam("id") Long id) {
        try {
            pledgeBean.delete(id);
            return success();
        } catch (Exception e) {

            return failure("Unable to delete!");
        }

    }


}
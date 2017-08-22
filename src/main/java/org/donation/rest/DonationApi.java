package org.donation.rest;

import org.common.rest.BaseApi;
import org.donation.bean.DonationBeanI;
import org.donation.model.Donation;
import org.donation.wrapper.DonationWrapper;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

/**
 * Created by fastlane on 8/4/16.
 */
@Path("/donation")
public class DonationApi extends BaseApi {

    @EJB
    private DonationBeanI donationBean;

    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(Donation donation){
        try {
            donationBean.save(donation);
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
            @DefaultValue("0") @PathParam("id") Long id) {
        Donation donation = new Donation();
        donation.setId(id);
        DonationWrapper wrapper = (DonationWrapper) donationBean.list(-1l, -1l, donation);
        if(wrapper.getList().isEmpty())
            return notFound();

        return entity(wrapper.getList().get(0));
    }

    @RolesAllowed("DEFAULT")
    @GET
    @Path("list")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(
            @DefaultValue("0") @QueryParam("start") long start,
            @DefaultValue("50") @QueryParam("limit") long limit) {
        Donation donation = new Donation();

        return entity((DonationWrapper) donationBean.list(start, limit, donation));

    }

}

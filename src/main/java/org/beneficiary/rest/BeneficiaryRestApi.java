package org.beneficiary.rest;

import org.beneficiary.bean.BeneficiaryBeanI;
import org.beneficiary.model.Beneficiary;
import org.beneficiary.wrapper.BeneficiaryWrapper;
import org.common.rest.BaseApi;

import javax.annotation.security.RolesAllowed;
import javax.ejb.EJB;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.PrintWriter;

/**
 * Created by fastlane on 8/4/16.
 */

@Path("/beneficiary")
public class BeneficiaryRestApi extends BaseApi{

    @EJB
    private BeneficiaryBeanI beneficiaryBean;

    @RolesAllowed({"DEFAULT","ADMIN"})
    @POST
    @Path("/save")
    @Consumes(MediaType.APPLICATION_JSON)
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(Beneficiary beneficiary) {

        try {
            beneficiaryBean.save(beneficiary);
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
        Beneficiary beneficiary = new Beneficiary();
        beneficiary.setId(id);
        beneficiaryBean.load(id);
        if (beneficiaryBean.load(id)== null){
            return notFound();
        }
        else
            return(entity(beneficiaryBean.load(id)));
    }


    @RolesAllowed("DEFAULT")
    @GET
    @Path("list")
    @Produces(MediaType.APPLICATION_JSON)
    public Response list(
            @QueryParam("start") long start,
            @QueryParam("limit") long limit) {
        Beneficiary beneficiary = new Beneficiary();
        return entity((BeneficiaryWrapper) beneficiaryBean.list(start, limit, beneficiary));

    }
    @RolesAllowed("DEFAULT")
    @DELETE
    @Path("delete/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response delete(@PathParam("id") Long id) {
        try {
            beneficiaryBean.delete(id);
            return success();
        } catch (Exception e) {

            return failure("Unable to delete!");
        }

    }


}
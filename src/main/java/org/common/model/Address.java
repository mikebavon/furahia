package org.common.model;

/**
 * Created by fastlane on 8/4/16.
 */
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

@JsonInclude(Include.NON_EMPTY)
@Embeddable
public class Address implements Serializable{

    private static final long serialVersionUID = 1L;

    @Column(name = "postal_address")
    private String postalAddress;

    @Column(name = "postal_code")
    private String postalCode;

    @Column(name = "fixed_phone")
    private String fixedPhone;

    @Column(name = "cell_phone")
    private String cellPhone;

    @Column(name = "email")
    private String email;

    @Column(name = "building")
    private String building;

    @Column(name = "road")
    private String road;

    @Column(name = "estate")
    private String estate;

    @Column(name = "town")
    private String town;

    @Column(name = "country")
    private String country;

    @Column(name = "website")
    private String website;

    public String getCellPhone() {
        return cellPhone;
    }

    public void setCellPhone(String cellPhone) {
        this.cellPhone = cellPhone.toUpperCase();
    }

    public String getPostalAddress() {
        return postalAddress;
    }

    public void setPostalAddress(String postalAddress) {
        this.postalAddress = postalAddress.toUpperCase();
    }

    public String getFixedPhone() {
        return fixedPhone;
    }

    public void setFixedPhone(String fixedPhone) {
        this.fixedPhone = fixedPhone.toUpperCase();
    }

       public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email.toUpperCase();
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building.toUpperCase();
    }

    public String getRoad() {
        return road;
    }

    public void setRoad(String road) {
        this.road = road.toUpperCase();
    }

    public String getEstate() {
        return estate;
    }

    public void setEstate(String estate) {
        this.estate = estate;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town.toUpperCase();
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country.toUpperCase();
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }
}

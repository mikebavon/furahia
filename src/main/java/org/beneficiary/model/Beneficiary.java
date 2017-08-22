package org.beneficiary.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.charityorg.model.CharityOrg;
import org.common.model.Address;
import org.common.model.BaseEntity;
import org.common.model.Person;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by fastlane on 8/4/16.
 */
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@XmlRootElement
@Entity
@Table(name = "ben_beneficiries")
@DynamicInsert()
@DynamicUpdate()
public class Beneficiary extends BaseEntity {

    @Embedded
    private Person person;

    @Embedded
    private Address address;

    @ManyToOne
    private CharityOrg charityOrg;

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public CharityOrg getCharityOrg() {
        return charityOrg;
    }

    public void setCharityOrg(CharityOrg charityOrg) {
        this.charityOrg = charityOrg;
    }
}

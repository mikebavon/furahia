package org.donor.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.auth.model.UserAuth;
import org.common.model.Address;
import org.common.model.BaseEntity;
import org.common.model.Person;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by fastlane on 8/4/16.
 */
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@XmlRootElement
@Entity
@Table(name = "donor_donors")
@DynamicInsert()
@DynamicUpdate()
public class Donor extends BaseEntity {

    @Embedded
    private Person person;

    @Embedded
    private Address address;

    @OneToOne
    @JoinColumn(name = "auth_id")
    private UserAuth userAuth;


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

    public UserAuth getUserAuth() {
        return userAuth;
    }

    public void setUserAuth(UserAuth userAuth) {
        this.userAuth = userAuth;
    }
}
package org.charityorg.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.common.model.Address;
import org.common.model.BaseEntity;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by fastlane on 8/4/16.
 */

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@XmlRootElement
@Entity
@Table(name = "co_charity_orgs")
@DynamicInsert()
@DynamicUpdate()
public class CharityOrg extends BaseEntity{

    @Column
    private String name;

    @Embedded
    private Address address;

    @Column(columnDefinition = "TEXT")
    private String descr;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }
}

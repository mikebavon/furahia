package org.pledge.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.beneficiary.model.Beneficiary;
import org.donor.model.Donor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;

/**
 * Created by ndikraxx on 10/9/16.
 */
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@XmlRootElement
@Entity
@Table(name = "pledge_pledges")
@DynamicInsert()
@DynamicUpdate()
public class Pledge implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column
    private float amount;
    @Column
    private int notificationPeriod;
    @Column
    private String supportArea;
    @ManyToOne
    private Donor donor;

    @ManyToOne
    private Beneficiary beneficiary;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public int getNotificationPeriod() {
        return notificationPeriod;
    }

    public void setNotificationPeriod(int notificationPeriod) {
        this.notificationPeriod = notificationPeriod;
    }

    public String getSupportArea() {
        return supportArea;
    }

    public void setSupportArea(String supportArea) {
        this.supportArea = supportArea;
    }

    public Donor getDonor() {
        return donor;
    }

    public void setDonor(Donor donor) {
        this.donor = donor;
    }

    public Beneficiary getBeneficiary() {
        return beneficiary;
    }

    public void setBeneficiary(Beneficiary beneficiary) {
        this.beneficiary = beneficiary;
    }
}

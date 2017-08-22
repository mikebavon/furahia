package org.donation.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import org.beneficiary.model.Beneficiary;
import org.common.model.BaseEntity;
import org.donor.model.Donor;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;
import java.math.BigDecimal;

/**
 * Created by fastlane on 8/4/16.
 */
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@XmlRootElement
@Entity
@Table(name = "dnt_donations")
@DynamicInsert()
@DynamicUpdate()
public class Donation extends BaseEntity{

    @ManyToOne
    private Beneficiary beneficiary;

    @Transient
    private Long beneficiaryId;

    @ManyToOne
    private Donor donor;

    @Transient
    private Long donorId;

    @Column
    private String descr;

    @Column(name = "amt_value")
    private BigDecimal amountValue;

    public Beneficiary getBeneficiary() {
        return beneficiary;
    }

    public void setBeneficiary(Beneficiary beneficiary) {
        this.beneficiary = beneficiary;
    }

    public Long getBeneficiaryId() {
        return beneficiaryId;
    }

    public void setBeneficiaryId(Long beneficiaryId) {
        this.beneficiaryId = beneficiaryId;
    }

    public Donor getDonor() {
        return donor;
    }

    public void setDonor(Donor donor) {
        this.donor = donor;
    }

    public Long getDonorId() {
        return donorId;
    }

    public void setDonorId(Long donorId) {
        this.donorId = donorId;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    public BigDecimal getAmountValue() {
        return amountValue;
    }

    public void setAmountValue(BigDecimal amountValue) {
        this.amountValue = amountValue;
    }
}

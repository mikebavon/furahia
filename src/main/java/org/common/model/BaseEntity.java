package org.common.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlTransient;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by fastlane on 8/4/16.
 */
@MappedSuperclass
public abstract class BaseEntity implements Serializable {

    /**
     * Generated serial id
     */
    private static final long serialVersionUID = -8977005917799457053L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "base_created_by")
    private String baseCreatedBy;

    @Column(name = "base_created_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date baseCreatedTime;

    @XmlElement(name = "id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @JsonIgnore
    @XmlTransient
    public String getBaseCreatedBy() {
        return baseCreatedBy;
    }

    public void setBaseCreatedBy(String baseCreatedBy) {
        this.baseCreatedBy = baseCreatedBy;
    }

    @JsonIgnore
    @XmlTransient
    public Date getBaseCreatedTime() {
        return baseCreatedTime;
    }

    public void setBaseCreatedTime(Date baseCreatedTime) {
        this.baseCreatedTime = baseCreatedTime;
    }

}

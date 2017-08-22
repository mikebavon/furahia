package org.beneficiary.wrapper;

import org.beneficiary.model.Beneficiary;

import javax.xml.bind.annotation.XmlElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */
public class BeneficiaryWrapper implements Serializable {

    private static final long serialVersionUID = 1L;

    private int count;

    private List<Beneficiary> list = new ArrayList<Beneficiary>();

    @XmlElement
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @XmlElement
    public List<Beneficiary> getList() {
        return list;
    }

    public void setList(List<Beneficiary> list) {
        this.list = list;
    }

}
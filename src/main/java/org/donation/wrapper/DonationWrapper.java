package org.donation.wrapper;

import org.donation.model.Donation;

import javax.xml.bind.annotation.XmlElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */
public class DonationWrapper implements Serializable {

    private static final long serialVersionUID = 1L;

    private int count;

    private List<Donation> list = new ArrayList<Donation>();

    @XmlElement
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @XmlElement
    public List<Donation> getList() {
        return list;
    }

    public void setList(List<Donation> list) {
        this.list = list;
    }

}
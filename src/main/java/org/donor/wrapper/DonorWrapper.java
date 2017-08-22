package org.donor.wrapper;

import org.donor.model.Donor;

import javax.xml.bind.annotation.XmlElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */
public class DonorWrapper implements Serializable {

    private static final long serialVersionUID = 1L;

    private int count;

    private List<Donor> list = new ArrayList<Donor>();

    @XmlElement
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @XmlElement
    public List<Donor> getList() {
        return list;
    }

    public void setList(List<Donor> list) {
        this.list = list;
    }

}

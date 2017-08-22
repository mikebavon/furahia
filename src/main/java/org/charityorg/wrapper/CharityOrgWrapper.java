package org.charityorg.wrapper;

import org.charityorg.model.CharityOrg;

import javax.xml.bind.annotation.XmlElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by fastlane on 8/4/16.
 */
public class CharityOrgWrapper implements Serializable {

    private static final long serialVersionUID = 1L;

    private int count;

    private List<CharityOrg> list = new ArrayList<CharityOrg>();

    @XmlElement
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @XmlElement
    public List<CharityOrg> getList() {
        return list;
    }

    public void setList(List<CharityOrg> list) {
        this.list = list;
    }

}

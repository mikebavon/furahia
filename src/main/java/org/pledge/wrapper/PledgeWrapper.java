package org.pledge.wrapper;

import org.pledge.model.Pledge;

import javax.xml.bind.annotation.XmlElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ndikraxx on 10/9/16.
 */
public class PledgeWrapper implements Serializable {
    private static final long serialVersionUID = 1L;

    private int count;

    private List<Pledge> list = new ArrayList<Pledge>();

    @XmlElement
    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    @XmlElement
    public List<Pledge> getList() {
        return list;
    }

    public void setList(List<Pledge> list) {
        this.list = list;
    }
}

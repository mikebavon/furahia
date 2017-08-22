package org.auth.wrapper;

import org.auth.model.User;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@XmlRootElement(name = "users")
public class UserWrapper implements Serializable{

	private static final long serialVersionUID = 1L;

	private int count;
	
	private List<User> list = new ArrayList<>();

	@XmlElement
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@XmlElement
	public List<User> getList() {
		return list;
	}

	public void setList(List<User> list) {
		this.list = list;
	}
	
}
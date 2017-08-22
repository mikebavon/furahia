package org.auth.model;

import org.common.model.BaseEntity;
import org.common.model.Status;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@NamedQueries({
		@NamedQuery(
				name = UserAuth.NQ_FIND_BY_USERNAME_AND_PWD,
				query = "FROM UserAuth ua WHERE ua.username=:uName AND ua.password=:pwd"
		),
		@NamedQuery(
				name = UserAuth.NQ_FIND_BY_USER_ID,
				query = "FROM UserAuth a WHERE a.user.id=:uId"
		),
		@NamedQuery(
				name = UserAuth.NQ_FIND_BY_USER_ID_AND_PWD,
				query = "FROM UserAuth ua WHERE "
						+ "ua.user.id=:userId AND ua.password=:pwd"
		)
})

@XmlRootElement
@Entity
@Table(name = "user_auths")
public class UserAuth extends BaseEntity {

	private static final long serialVersionUID = 1L;
	
	public static final String NQ_FIND_BY_USERNAME_AND_PWD = "userAuthentication.findByUsernameAndPwd";

	public static final String NQ_FIND_BY_USER_ID_AND_PWD = "UserAuth.findByUserIdAndPwd";

	public static final String NQ_FIND_BY_USER_ID = "UserAuth.findByUserId";

	@Column
	private String username;
	
	@Column
	private String password;
	
	@Column(name = "orig_password")
	private String origPassword;
	
	@Transient
	private String confirmPassword;
	
	@Column(name = "status")
	@Enumerated(EnumType.STRING)
	private Status status;
	
	@ManyToOne
	private User user;
	
	@XmlElement
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@XmlTransient
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@XmlElement
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	@XmlTransient
	public String getOrigPassword() {
		return origPassword;
	}

	public void setOrigPassword(String origPassword) {
		this.origPassword = origPassword;
	}

	@XmlTransient
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@XmlElement
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
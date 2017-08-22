package org.auth.model;

import org.common.model.BaseEntity;
import org.common.model.Status;
import org.common.model.YesNo;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import java.util.List;

@XmlRootElement
@NamedQueries({
        @NamedQuery(
                name = "User.findAll",
                query = "FROM User u"
        ),
        @NamedQuery(
                name = "User.findByUserProfile",
                query = "FROM User u WHERE u.userProfile=:profileId"
        )
})
@Entity
@Table(name = "user_users")
public class User extends BaseEntity{

	private static final long serialVersionUID = 1L;

	@Column(name = "account_status")
	@Enumerated(EnumType.STRING)
	private Status status;
	
	@Column(name = "account_locked")
	@Enumerated(EnumType.STRING)
	private YesNo locked;

	@Column(name = "user_profile")
	@Enumerated(EnumType.STRING)
	private UserProfile userProfile;

	@OneToMany(mappedBy = "user",cascade={CascadeType.ALL})
	private List<UserAuth> userAuthentication;

	@Transient
	private String username;
	
	@Transient
	private String password;
	
	@Transient
	private String passwordConfirm;
	
	@XmlTransient
	public List<UserAuth> getUserAuthentication() {
		return userAuthentication;
	}
	
	public void setUserAuthentication(List<UserAuth> userAuthentication) {
		this.userAuthentication = userAuthentication;
	}

	@XmlTransient
	public void addUserAuthentication(UserAuth a){
		a.setUser(this);
		getUserAuthentication().add(a);
	}

	@XmlTransient
	public UserProfile getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}

	@XmlElement
	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	@XmlElement
	public YesNo getLocked() {
		return locked;
	}

	public void setLocked(YesNo locked) {
		this.locked = locked;
	}

	@XmlTransient
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

	@XmlTransient
	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
}
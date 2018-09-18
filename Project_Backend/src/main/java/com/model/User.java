package com.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import org.springframework.stereotype.Component;

@Component
@Entity
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1704379726153417848L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotEmpty(message="Name values can not be blank")
	private String Name;
	@NotEmpty(message = "") @Email
	private String email;
	
	@Column(unique=true,nullable=false)
	@NotEmpty(message="Username cannot be blank")
	private String Username;
	
	@NotEmpty(message = "Please enter your password")
   @Size(min = 6, max = 10, message = "Your password must between 6 and 10 characters")
	private String Password;
	private boolean enabled=true;
	private String Address;
    
    @NotEmpty(message="State values can not be blank")
	private String State;
    
    @OneToOne(mappedBy="user")
    private Customer customer;
    
  //  @Transient //it will not get persisted
	//private MultipartFile image;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean b) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
}
	
	


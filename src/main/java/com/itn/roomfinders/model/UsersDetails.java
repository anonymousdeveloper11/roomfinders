package com.itn.roomfinders.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table(name="Users_Details")
public class UsersDetails implements Serializable{
	
	public static final long SerialVersionUID=9087654L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="ud_id")
	private int id;
	 private String name;
     private String address;
     private String phone;
    
     @Column(unique=true)
     private String email;
     
     @Column(unique=true)
     private String username;
     private String password;
     
    @Transient
    private String confirm;
    private String active;
      
     @Transient
    private String authority;
     
     @OneToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL, mappedBy="userDetail")
     private UsersRoles userRole;
     
     @OneToMany(fetch=FetchType.LAZY, cascade=CascadeType.ALL, mappedBy="usersDetails")
     private  List<Booking> booking;

     
	public UsersDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UsersDetails(int id, String name, String address, String phone, String email, String username,
			String password, String confirm, String active, String authority, UsersRoles userRole,List<Booking> booking) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
		this.confirm = confirm;
		this.active = active;
		this.authority = authority;
		this.userRole = userRole;
		this.booking=booking;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirm() {
		return confirm;
	}

	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public UsersRoles getUserRole() {
		return userRole;
	}

	public void setUserRole(UsersRoles userRole) {
		this.userRole = userRole;
	}
	
	

	public List<Booking> getBooking() {
		return booking;
	}

	public void setBooking(List<Booking> booking) {
		this.booking = booking;
	}

	
     

}

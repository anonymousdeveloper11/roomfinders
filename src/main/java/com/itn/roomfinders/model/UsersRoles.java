package com.itn.roomfinders.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="Users_Roles")
public class UsersRoles implements Serializable{
	
	public static final long serialVersionUID=986754L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="ur_id")
	private int id;
	 private String role;
	    @OneToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	    @JoinColumn(name="ud_id")
	    private UsersDetails userDetail;
		public UsersRoles() {
			super();
			// TODO Auto-generated constructor stub
		}
		public UsersRoles(int id, String role, UsersDetails usersDetails) {
			super();
			this.id = id;
			this.role = role;
			this.userDetail = usersDetails;
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		public UsersDetails getUsersDetails() {
			return userDetail;
		}
		
		
		public void setUsersDetails(UsersDetails usersDetails) {
			// TODO Auto-generated method stub

			this.userDetail = usersDetails;
		}
	    
	    

	
	

}

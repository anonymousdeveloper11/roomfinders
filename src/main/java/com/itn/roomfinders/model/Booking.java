package com.itn.roomfinders.model;

import java.io.Serializable;
import java.sql.Date;

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
@Table(name="booking_table")
public class Booking implements Serializable{
	private static final long SerialVersionUID=987654L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	@Column(name="booking_id")
	private int id;
	
	
	
	private long phone;
	@Column(name="booking_remark")
	private String remark;
	
	@Column(name="booking_date")
	private Date bookingDate;
	
	private String ownerId;
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name="user_id", nullable=false)
	private UsersDetails usersDetails;
	
	
	
	@OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name="room_id", nullable=false)
	private Room room;

	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Booking(int id, long phone, String remark, Date bookingDate,String ownerId,  UsersDetails usersDetails,
			Room room) {
		super();
		this.id = id;
		this.phone = phone;
		this.remark = remark;
		this.bookingDate = bookingDate;
		this.ownerId = ownerId;
		this.usersDetails = usersDetails;
		this.room = room;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	
	public UsersDetails getUsersDetails() {
		return usersDetails;
	}


	public void setUsersDetails(UsersDetails usersDetails) {
		this.usersDetails = usersDetails;
	}


	public Room getRoom() {
		return room;
	}


	public void setRoom(Room room) {
		this.room = room;
	}


	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}


	public String getOwnerId() {
		return ownerId;
	}


	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	
	

	
	
	

}

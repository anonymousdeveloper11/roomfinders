package com.itn.roomfinders.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="room_table")
public class Room implements Serializable{
	private static final long SerialVersionUID=987654L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	
	@Column(name="room_ID")
	private int id;
	
	@Column(name="room_TYPE")
	private String type;
	
	@Column(name="room_AREA")
	private double area;
	
	@Column(name="room_WATER")
	private boolean water;
	
	@Column(name="room_PARKING")
	private boolean parking;
	
	@Column(name="room_PRICE")
	private double price;
	
	@Column(name="room_IMAGE")
	private String image;
	
	@Column(name="room_LOCATION")
	private String location;
	
	
	@Column(name="room_VERIFY")
	private String verify;
	
	private String comment;
	
	private int bedroom;
	
	private int bathroom;
	
	private Date date;
	 
	private String status;
	
	private long phone;
	
	//private List<Room> Room = new ArrayList<>();

	@OneToOne(fetch=FetchType.LAZY, cascade=CascadeType.ALL, mappedBy="room")
     private Booking booking;
	 
	
	 @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
		@JoinColumn(name="user_id", nullable=false)
		private UsersDetails usersDetails;
		
	 

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public UsersDetails getUsersDetails() {
		return usersDetails;
	}

	public void setUsersDetails(UsersDetails usersDetails) {
		this.usersDetails = usersDetails;
	}

	public Room() {
		super();
	}

	public Room(int id, String type, double area, boolean water, boolean parking, double price, String image, String verify,
			String location, String comment, int bathroom, int bedroom, Date date, String status, long phone) {
		super();
		this.id = id;
		this.type = type;
		this.area = area;
		this.water = water;
		this.parking = parking;
		this.price = price;
		this.image = image;
		this.location = location;
		this.verify=verify;
		this.comment=comment;
		this.bathroom=bathroom;
		this.bedroom=bedroom;
		this.date=date;
		this.status=status;
		this.phone=phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getArea() {
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public boolean isWater() {
		return water;
	}

	public void setWater(boolean water) {
		this.water = water;
	}

	public boolean isParking() {
		return parking;
	}

	public void setParking(boolean parking) {
		this.parking = parking;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	public String getVerify() {
		return verify;
	}
	public void setVerify(String verify) {
		this.verify=verify;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}
	
	public int getBedroom() {
		return bedroom;
	}

	public void setBedroom(int bedroom) {
		this.bedroom = bedroom;
	}

	public int getBathroom() {
		return bathroom;
	}

	public void setBathroom(int bathroom) {
		this.bathroom = bathroom;
	}
	
	public Date getDate() {
		return date;
	}
	
	public void setDate(Date date) {
		this.date=date;
	}

	
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Room [id=" + id + ", type=" + type + ", area=" + area + ", water=" + water + ", parking=" + parking
				+ ", price=" + price + ", image=" + image + ", location=" + location + "]";
	}
	
	
	
	
	

}

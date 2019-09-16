package com.itn.roomfinders.service;

import java.util.List;

import org.springframework.context.annotation.Bean;

import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.UsersDetails;

public interface BookingService {

	@Bean
	
	public void saveBook(Booking booking);
	public List<Booking> getAllBooking();
	public void deleteBook(Booking booking);
	public List<Booking> getBookByUserId(UsersDetails usersDetails );
	//public List<Booking> getBookByOwnerId(UsersDetails usersDetails);
	public void updateBook(Booking booking);
	public Booking getBookById(int id);
	//public List<Booking> getBookingDetail();
	public List<Booking> getBookByOwnerId(UsersDetails usersDetails);
}

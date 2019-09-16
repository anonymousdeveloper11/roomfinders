package com.itn.roomfinders.service;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.itn.roomfinders.dao.BookingDao;
import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.UsersDetails;

@Service
@Transactional
public class BookingServiceImpl implements BookingService{
	
	@Autowired
	private BookingDao bookingDao;

	

	@Override
	public List<Booking> getAllBooking() {
		// TODO Auto-generated method stub
		return (List<Booking>) bookingDao.findAll();
	}

	@Override
	public void deleteBook(Booking booking) {
		// TODO Auto-generated method stub
		bookingDao.delete(booking);
	}

	@Override
	public void saveBook(Booking booking) {
		// TODO Auto-generated method stub
		bookingDao.save(booking);
		
	}

	@Override
	public List<Booking> getBookByUserId(UsersDetails usersDetails) {
		// TODO Auto-generated method stub
		return bookingDao.getByUsersDetails(usersDetails);
	}

	

	@Override
	public void updateBook(Booking booking) {
		// TODO Auto-generated method stub
		bookingDao.save(booking);
	}

	
	@Override
	public Booking getBookById(int id) {
		// TODO Auto-generated method stub
		return bookingDao.getById(id);
	}

	@Override
	public List<Booking> getBookByOwnerId(UsersDetails usersDetails) {
		// TODO Auto-generated method stub
		return bookingDao.findByOwnerId(usersDetails.getUsername());
	}

	
	

	

//	@Override
	//public List<Booking> getBookingDetail() {
		//// TODO Auto-generated method stub
		//return null;
//	}

	
}

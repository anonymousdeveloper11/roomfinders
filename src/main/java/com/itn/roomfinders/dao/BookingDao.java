package com.itn.roomfinders.dao;





import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.UsersDetails;

@Repository
public interface BookingDao extends JpaRepository<Booking, Integer>{

	List<Booking> getByUsersDetails(UsersDetails userDetails);

	List<Booking> getByOwnerId(UsersDetails usersDetails);

	Booking getById(int id);

	List<Booking> findByOwnerId(String ownerId);

	

	
}

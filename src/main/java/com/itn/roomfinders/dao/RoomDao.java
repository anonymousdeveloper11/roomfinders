package com.itn.roomfinders.dao;




import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;

@Repository
public interface RoomDao extends JpaRepository<Room, Integer>{


	List<Room> getByUsersDetails(UsersDetails usersDetails);   // owner of room searching

	Room getById(int id);

	Room getByBookingId(int id);

	List<Room> getByStatus(String string);

	List<Room> findByType(String type);

	Room findByUsersDetails(UsersDetails usersDetails);

	List<Room> getByStatus(String string, Sort by);

	//List<Room> findByType(String type, Pageable pageable);

	//List<Room> getFilterRoom(Room room);

	
	
	}
	



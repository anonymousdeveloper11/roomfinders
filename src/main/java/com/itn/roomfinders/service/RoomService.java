package com.itn.roomfinders.service;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Sort;
import org.springframework.web.multipart.MultipartFile;

import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;

public interface RoomService {
	
    public void addRoom(Room room);
    
    public List<Room> getAllRoom();
    public void updateRoom(Room room);
    public void deleteRoom(Room room);
    public Room getRoomById(int id);
    public List<Room> getRoomByOwnerId(UsersDetails usersDetails);

    
    public boolean uploadImage(MultipartFile image);
    
    public Room getRoomByBookingId(int id);
    public List<Room> getAvailableRoom(Sort sort); 
    public List<Room> getUnverifyRoom();
    public void saveRoom(Room room);
    public List<Room> getBookingRoom();
    public Room getByOwnerId(UsersDetails usersDetails);
   // public List<Room> getFilterRoom(Room room);
    public List<Room> findRoomByType(String type);

	
    

}

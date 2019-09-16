package com.itn.roomfinders.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itn.roomfinders.dao.RoomDao;
import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;

@Service
public class RoomServiceImpl implements RoomService{

	private static final String uploadDir="c://Users//binod//Desktop//roomimage";
@Autowired
private RoomDao roomDao;
	@Override
	public void addRoom(Room room) {
		// TODO Auto-generated method stub
		room.setStatus("X");
		roomDao.save(room);
	}

	@Override
	public List<Room> getAllRoom() {
		// TODO Auto-generated method stub
		return (List<Room>) roomDao.findAll();

	}

	@Override
	public void updateRoom(Room room) {
		// TODO Auto-generated method stub
		roomDao.save(room);
	}

	@Override
	public void deleteRoom(Room room) {
		// TODO Auto-generated method stub
		roomDao.delete(room);
	}

	
	

	@Override
	public boolean uploadImage(MultipartFile image) {
		// TODO Auto-generated method stub
		//check if upload_dir exist if not create the directory
        File uploadLocation = new File(uploadDir);
        
        if(!uploadLocation.exists()){
            uploadLocation.mkdir();
        }
        boolean status = false;
        
       
        String fileName = image.getOriginalFilename();
        System.out.println(fileName);
        
       File uploadFile = new File(uploadLocation+File.separator+fileName);
       try{
           image.transferTo(uploadFile);
           status=true;
       }catch(Exception e){
           System.out.println(e);
                   
       }
        
       return status;
	}

	@Override
	public List<Room> getRoomByOwnerId(UsersDetails usersDetails) {
		// TODO Auto-generated method stub
		
		return roomDao.getByUsersDetails(usersDetails);
		
			
			
		}
	
		
	

	@Override
	public Room getRoomById(int id) {
		// TODO Auto-generated method stub
		return roomDao.getById(id);
	}

	@Override
	public Room getRoomByBookingId(int id) {
		// TODO Auto-generated method stub
		return roomDao.getByBookingId(id);
	}

	//@Override
	//public List<Room> getAvailableRoom() {
		// TODO Auto-generated method stub
		//return roomDao.getByStatus("0");
	//}

	@Override
	public List<Room> getUnverifyRoom() {
		// TODO Auto-generated method stub
		return roomDao.getByStatus("X");
	}

	@Override
	public void saveRoom(Room room) {
		// TODO Auto-generated method stub
		roomDao.save(room);
		
	}

	@Override
	public List<Room> getBookingRoom() {
		// TODO Auto-generated method stub
		return roomDao.getByStatus("1");
	}

	@Override
	public List<Room> findRoomByType(String type) {
		// TODO Auto-generated method stub
		return roomDao.findByType(type);
	}

	@Override
	public Room getByOwnerId(UsersDetails usersDetails) {
		// TODO Auto-generated method stub
		return roomDao.findByUsersDetails(usersDetails);
	}

	@Override
	public List<Room> getAvailableRoom(Sort sort) {
		// TODO Auto-generated method stub
		return roomDao.getByStatus("0",Sort.by(Sort.Direction.DESC, "date"));
	}

	

	//@Override
	//public List<Room> getFilterRoom(Room room) {
		// TODO Auto-generated method stub
		//return roomDao.getFilterRoom(room);
	//}
}





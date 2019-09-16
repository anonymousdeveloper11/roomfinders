package com.itn.roomfinders.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import com.itn.roomfinders.dao.UserDao;
import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.model.UsersRoles;


@Service
@Transactional
public class UserServiceImpl implements UserService{

	 @Autowired
	    private UserDao userDao;
	 private UsersDetails usersDetails;
	   
     private static final String uploadDir="c://Users//binod//Desktop//appimage";

	@Override
	public void saveUser(UsersDetails usersDetails) {
		// TODO Auto-generated method stub
		
		UsersRoles ur = new UsersRoles();
		ur.setRole(usersDetails.getAuthority());
		ur.setUsersDetails(usersDetails);
		usersDetails.setUserRole(ur);
		
        userDao.save(usersDetails);
 
	}

	@Override
	public List<UsersDetails> getAllUsersDetails() {
		// TODO Auto-generated method stub
		return userDao.findAll();
	}

	@Override
	public UsersDetails getUsersDetailsById(int id) {
		// TODO Auto-generated method stub
		return (UsersDetails)userDao.findAll();
	} 

	@Override
	public void updateUsersDetails(UsersDetails userDetails) {
		// TODO Auto-generated method stub
		 userDao.save(usersDetails);
	}

	@Override
	public void deleteUsersDetails(int id) {
		// TODO Auto-generated method stub
	userDao.deleteById(id);	
	}

	@Override
	public UsersDetails findUserByUsername(String user) {
		// TODO Auto-generated method stub
		 return userDao.findByUsername(user);
	}

}

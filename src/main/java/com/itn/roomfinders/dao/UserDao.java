package com.itn.roomfinders.dao;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.itn.roomfinders.model.UsersDetails;

@Repository
public interface UserDao extends JpaRepository<UsersDetails,Integer>{

	UsersDetails findByUsername(String user);

	

	

}



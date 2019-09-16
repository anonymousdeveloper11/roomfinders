package com.itn.roomfinders.service;

import java.util.List;

import org.springframework.context.annotation.Bean;

import com.itn.roomfinders.model.UsersDetails;




public interface UserService {
	@Bean
	public void saveUser(UsersDetails usersDetails);
    public List<UsersDetails> getAllUsersDetails();
    public UsersDetails getUsersDetailsById(int id);
    public void updateUsersDetails(UsersDetails userDetails);
    public void deleteUsersDetails(int id);
    public UsersDetails findUserByUsername(String user);
}

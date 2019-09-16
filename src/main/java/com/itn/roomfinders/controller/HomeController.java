package com.itn.roomfinders.controller;

import java.awt.print.Pageable;
import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itn.roomfinders.dao.RoomDao;
import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.service.BookingService;
import com.itn.roomfinders.service.RoomService;
import com.itn.roomfinders.service.UserService;


@Controller
public class HomeController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	RoomService roomService;
	@Autowired
	BookingService bookingService;
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@Autowired
	RoomDao roomDao;
	
	@RequestMapping(value={"/","/home"}, method=RequestMethod.GET) 
    public String openHome(Model model, Principal p){
		if(p!=null) {
		UsersDetails username = userService.findUserByUsername(p.getName());
		model.addAttribute("userinfo", username);
		}
		model.addAttribute("roomlist", roomService.getAvailableRoom(Sort.by(Sort.Direction.DESC, "date")));
		
		
        return "welcome";
    }
	
	@RequestMapping(value="/user/home", method=RequestMethod.GET)
	public String openUserHome(Principal p, Model model) {
		UsersDetails username = userService.findUserByUsername(p.getName());
		model.addAttribute("userinfo", username);
		//model.addAttribute("bookinglist",bookingService.getBookByUserId(username));
		model.addAttribute("roomlist", roomService.getAvailableRoom(Sort.by(Sort.Direction.DESC, "date")));
		
		return "tenant";
	}
	
	//@RequestMapping(value="/ownerhome", method=RequestMethod.GET)
	//public String openOwnerHome(Model model, Principal p){
		//UsersDetails username = userService.findUserByUsername(p.getName());
		
		 //model.addAttribute("roomlist", roomService.getRoomByOwnerId(username));
		 //model.addAttribute("userinfo", username);
		//return "owner";
//}
	
	@RequestMapping(value="/adminhome", method=RequestMethod.GET)
	public String openAdminHome() {
		return"adminhome";
	}
	@RequestMapping(value="/signup", method=RequestMethod.GET)
    public String openRegister(){
        
        return "userRegister";
    }
	
	
	
     @RequestMapping(value="/signup", method=RequestMethod.POST)
    public String signup(@ModelAttribute("userDetails") UsersDetails userDetails){
         System.out.println(userDetails.getName());
         if(userDetails.getPassword().equals(userDetails.getConfirm())){
         userDetails.setPassword(passwordEncoder.encode(userDetails.getPassword()));
         }
         else{
             return"redirect:/signup?passwordMismatch";
         }
         
         if(userDetails.getAuthority().equals("ROLE_ADMIN")){
        	 userDetails.setActive("0");
         }else {
        	 userDetails.setActive("1");
         }
        	 
        	 userService.saveUser(userDetails);
         
        return "login";
}
    @RequestMapping(value="/login",method=RequestMethod.GET)
    public String openLogin(){
        return "login";
    }
    
    @RequestMapping(value="/roomDetail/{id}", method=RequestMethod.GET)
    public String openRoomDetail(@PathVariable("id") int id, Model model) {
    	
    	
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	
		 
    	return "roomDetail";
    }
    
    @RequestMapping(value="/owner/dashboard", method=RequestMethod.GET)
    public String openOwnerDashboard( Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
    //	model.addAttribute("bookinglist", bookingService.getBookByOwnerId(username));
		 
    	//model.addAttribute("userinfo", username);
		//Room room = roomService.getBookingRoom();
		// 
		
		 //Room room = roomService.getByOwnerId(username);
		// if(room.getStatus().equals("1")) {
			 List<Booking> bl = null;
		  if((bl=bookingService.getBookByOwnerId(username)).size()!=0) {
			  
			 
			model.addAttribute("bookinglist", bl);
			 model.addAttribute("userinfo", username);
			 return"ownerDashboard";
		}
		else {
			 return"bookingmessage";
		 }
		 
		
    }
    @RequestMapping(value="/user/booking/{id}", method=RequestMethod.GET)
    public String openBooking(@PathVariable("id") int id,Model model, Principal p ) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
    	model.addAttribute("userinfo", username);
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	return"booking";
    }
    
    @RequestMapping(value="/user/dashboard", method=RequestMethod.GET)
    public String openUserDashboard( Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
		
		 model.addAttribute("bookinglist", bookingService.getBookByUserId(username));
		 
			 model.addAttribute("userinfo", username);
		 return"userDashboard";
    }
    
    @RequestMapping(value="/admin/room/show", method=RequestMethod.GET)
    public String openAdminDashboard(Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
		model.addAttribute("userinfo", username);
		model.addAttribute("roomlist", roomService.getAvailableRoom(Sort.by(Sort.Direction.ASC, "date")));
		return "allroom";
    	
    }
    
    @RequestMapping(value="/bookingDetail/{id}", method=RequestMethod.GET)
    public String openBookingDetail(@PathVariable("id") int id, Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
    	model.addAttribute("roomdetail", roomService.getRoomByBookingId(id));
    	
		 model.addAttribute("userinfo", username);
    	return "bookingDetail";
    }
    
    @RequestMapping(value="/ownerRoomDetail/{id}", method=RequestMethod.GET)
    public String openOwnerRoomDetail(@PathVariable("id") int id,Model model, Principal p) {
    	
    	UsersDetails username = userService.findUserByUsername(p.getName());
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	
		 model.addAttribute("userinfo", username);
    	return "ownerRoomDetail";
    }
    
    @RequestMapping(value="/admin/verifyRoom", method=RequestMethod.GET)
    public String openVerifyRoom(Model model) {
    	model.addAttribute("roomlist", roomService.getUnverifyRoom());
    	return"verifyRoom";
    }
    @RequestMapping(value="/admin/verifyDetail/{id}", method=RequestMethod.GET)
    public String openVerifyDetail(@PathVariable("id") int id,Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	
		 model.addAttribute("userinfo", username);
		 return"verifyDetail";
    	
    }
    
    @RequestMapping(value="/admin/verify/{id}", method=RequestMethod.GET)
    public String verify(@PathVariable("id") int id, Model model) {
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	Room room = roomService.getRoomById(id);
    	if(room.getStatus().equals("X")) {
    		room.setStatus("0");
    		roomService.saveRoom(room);
    		
    	}
    	return "verifyRoom";
    }
    
    @RequestMapping(value="/admin/delete/{id}", method=RequestMethod.GET)
    public String deleteRoom(@PathVariable("id") int id, Model model) {
    	Room room = new Room();
		  room.setId(id);
	        roomService.deleteRoom(room);
	        return"verifyRoom";
    }
    
    @RequestMapping(value="/room", method=RequestMethod.GET)
    public String room(Model model, Principal p) {
    	if(p!=null) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
		model.addAttribute("userinfo", username);
    	}
		model.addAttribute("roomlist", roomService.getAvailableRoom(Sort.by(Sort.Direction.ASC, "date")));
		return"featureRoom";
    }
    
    @RequestMapping(value="/about", method=RequestMethod.GET)
    public String openAbout() {
    	return"about";
    }
   
    @RequestMapping(value="/admin/usersDetails", method=RequestMethod.GET)
    public String openUsersDetails(Model model, Principal p) {
    	UsersDetails username = userService.findUserByUsername(p.getName());
		model.addAttribute("userinfo", username);
    	model.addAttribute("usersDetailslist", userService.getAllUsersDetails());
    	return"userDetail";
    }
    
    @RequestMapping(value="user/userRoomDetail/{id}", method=RequestMethod.GET)
    public String openUserRoomDetail(@PathVariable("id") int id, Model model) {
    	
    	
    	model.addAttribute("roomdetail", roomService.getRoomById(id));
    	
		 
    	return "userRoomDetail";
    }
}

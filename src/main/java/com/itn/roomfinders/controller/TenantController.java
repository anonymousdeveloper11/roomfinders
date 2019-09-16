package com.itn.roomfinders.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.service.BookingService;
import com.itn.roomfinders.service.RoomService;
import com.itn.roomfinders.service.UserService;


@Controller
public class TenantController {
	//@RequestMapping(value="/user/home",method=RequestMethod.GET)
	//public String userHome() {
		//UsersDetails username = userService.findUserByUsername(p.getName());
		//model.addAttribute("userinfo", username);
		//model.addAttribute("roomlist", roomService.getAllRoom());
	//	return "tenant";
	//}
	private RoomService roomService;
	private BookingService bookService;
	private UserService userService;
	
	 @GetMapping("/user/room/show")
     public ModelAndView showRoom( ModelAndView mv){
     mv.addObject("roomlist", roomService.getAllRoom());
     mv.setViewName("room");
     return mv;
	 }
	 
	 @GetMapping("/user/room/detail")
	 public String detailRoom(@PathVariable("id") int rid,ModelAndView mv) {
		mv.addObject("roomdata",roomService.getRoomById(rid)); 
		mv.setViewName("roomdetails");
		return "room";
		
	 }
	 
	 //@PostMapping("/user/book/room")
	 //public String saveBook(@RequestParam("userid") String userId, @RequestParam("roomid") int roomId, @RequestParam("remark") String remark,
		//	 @RequestParam("bookingdate") int bookingDate) {
		 //Booking book = new Booking();
		 //book.setUserId(userId);
		 
		 //book.setRoomId(roomId);
		// book.setRemark(remark);
		 //book.setBookingDate(bookingDate);
		 //bookService.saveBook(book);
		 
		 //return "booking";
	 //}
	 
		 @GetMapping("/user/book/show/")
		 public String showBook( Model model, Principal p) {
			 UsersDetails username = userService.findUserByUsername(p.getName());
			 model.addAttribute("userinfo", username);
			 model.addAttribute("bookinglist", bookService.getBookByUserId(username));
				
		        return "booking";
			 
		 }
		 
		
		 
		 
		 
	 }


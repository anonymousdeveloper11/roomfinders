package com.itn.roomfinders.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.itn.roomfinders.model.Booking;
import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.service.BookingService;
import com.itn.roomfinders.service.RoomService;
import com.itn.roomfinders.service.UserService;




@Controller
public class BookingController {
	@Autowired
	private BookingService bookingService; 
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private UserService userService;
	
	 @RequestMapping(value="/user/room/book",method=RequestMethod.GET)
public ModelAndView BookRoom(ModelAndView mv) {
		 mv.addObject("bookinglist",bookingService.getAllBooking());
		 mv.setViewName("booking");
	        return mv;
		
	}
	 
	 @PostMapping("/user/room/book")
	    public String saveBook(Principal p, @RequestParam("roomId") int roomId,
	    		@RequestParam("phone") long phone, 
	    		@RequestParam("remark") String remark, String ownerId,
	            Model model){

	  Room room = roomService.getRoomById(roomId);
	        Booking book = new Booking();
	        book.setUsersDetails(userService.findUserByUsername(p.getName()));
	        book.setRoom(room);
	        book.setRemark(remark);
	        book.setPhone(phone);
	        book.setOwnerId(ownerId);
	        book.setBookingDate(java.sql.Date.valueOf( LocalDate.now()) );
	        if(room.getStatus().equals("0")) {
	        	bookingService.saveBook(book);
		        room.setStatus("1");//room has been booked
		        roomService.updateRoom(room);	
	        }
	        else {
	        	model.addAttribute("status", "room alredy booked");
	        	return"message";
	        }
	        
	        
	    	
	        return "tenant";
	 }
	 
	 @RequestMapping(value="/admin/book/show", method=RequestMethod.GET)
	    public String displayBook(Model model){
	        model.addAttribute("bookingtlist", bookingService.getAllBooking());
	        return "booking";
	    }
	        
	  @GetMapping(value="/user/book/delete/{id}")
	  public String deleteBook(@PathVariable("id") int id ){
		  Booking book = new Booking();
		  book.setId(id);
	        bookingService.deleteBook(book);
	        return "redirect:/user/dashboard";
	  }
	  @RequestMapping(value="/user/book/show", method=RequestMethod.GET)
	  public String showBook( Model model, Principal p) {
		  UsersDetails username = userService.findUserByUsername(p.getName());
			 model.addAttribute("userinfo", username);
		  model.addAttribute("bookinglist", bookingService.getBookByUserId(username));
		  return"booking";
		  
		  
		  
	  }
	  @GetMapping(value="/user/book/update")
	  public String updateBook(@ModelAttribute("booking") Booking booking) {
		  bookingService.updateBook(booking);
		  return "redirect:/user/booking/show";
	  }
	  
	  @GetMapping(value="/owner/book/show")
	  public String showOwnerBook(Model model,Principal p) {
		  UsersDetails username = userService.findUserByUsername(p.getName());
			 model.addAttribute("userinfo", username);
		  model.addAttribute("bookinglist", bookingService.getBookByOwnerId(username));
		  return"booking";
	  }
	  
	  @GetMapping(value="/admin/bookDetail")
	  public String bookDetail(Model model, Principal p) {
		  UsersDetails username = userService.findUserByUsername(p.getName());
		  model.addAttribute("bookinglist", bookingService.getAllBooking());
		  model.addAttribute("userinfo", username);
		  return "adminBookDetail";
	  }
	  
	  
	  @GetMapping(value="/admin/book/delete/{id}")
	  public String deleteBook(@PathVariable("id") int id,Model model) {
		  Booking book = new Booking();
		  book.setId(id);
	        bookingService.deleteBook(book);
	        return"adminBookDetail";
	  }
	  
	  

}

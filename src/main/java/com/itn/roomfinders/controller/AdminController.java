package com.itn.roomfinders.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.service.RoomService;


@Controller
public class AdminController {
	 @RequestMapping(value="/admin/home", method=RequestMethod.GET)
	    public String adminHome(){
	        return "adminhome";
	    }
	 private RoomService roomService;
	 
	// @GetMapping(value="/admin/room/show")
	 //public String showRoom(Model model) {
		// model.addAttribute("roomlist", roomService.getAllRoom());
		 //return"allroom";
		 
	 //}
	 @GetMapping("/admin/room/delete/{id}")
	    public String deleteRoom(@PathVariable("id") int rid){
	        Room room = new Room();
	       room.setId(rid);
	      roomService.deleteRoom(room);
	        return "redirect:/admin/room/show";
	 }
}

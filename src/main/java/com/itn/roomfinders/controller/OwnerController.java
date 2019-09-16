package com.itn.roomfinders.controller;

import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itn.roomfinders.model.Room;
import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.service.RoomService;
import com.itn.roomfinders.service.UserService;



@Controller

public class OwnerController {
	
	@RequestMapping(value="/owner/home", method=RequestMethod.GET)
	public String ownerHome(Principal p, Model model) {
		 UsersDetails username = userService.findUserByUsername(p.getName());
		 model.addAttribute("userinfo", username);
		 model.addAttribute("roomlist", roomService.getRoomByOwnerId(username));
		 
		//List<Room> room = roomService.getRoomByOwnerId(username);
	    	//if(((Room)room).getStatus().equals("X")) {
		//return "owner";
	    	//}else {
	    	//	model.addAttribute("roomlist", roomService.getRoomByOwnerId(username));
	    		return"ownerhome";
	    		
	    	//}
	}
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private UserService userService;
	 @GetMapping("/owner/room/add")
	    public ModelAndView addRoom(ModelAndView mv){
	         mv.addObject("roomlist", roomService.getAllRoom());
	        mv.setViewName("room");
	        return mv;
	 }
	@PostMapping("owner/room/add")
    public String saveRoom(@RequestParam("type") String type,
            @RequestParam("area") double area, @RequestParam("water") boolean water, @RequestParam("parking") boolean parking, 
            @RequestParam("price") double price, @RequestParam("image") MultipartFile[] image,
             @RequestParam("location") String location, @RequestParam("comment") String comment,
             @RequestParam("bedroom") int bedroom, @RequestParam("bathroom") int bathroom, @RequestParam("phone") long phone, Principal p){
        
        Room room = new Room();
        room.setType(type);
        room.setArea(area);
        room.setWater(water);
        room.setParking(parking);
        room.setPrice(price);
       StringBuilder files = new StringBuilder();
       
        for(MultipartFile file: image) {
        	if(!roomService.uploadImage(file)){
                //if image upload failed
                return "redirect:/owner/room/add?upload_failed";
            }
        	files.append(file.getOriginalFilename()+", ");
        }
        if(files.length()!=0) {
        room.setImage(files.substring(0, files.length()-2));
        }
       // room.setImage(image[0].getOriginalFilename()+", "+image[1].getOriginalFilename());
        
        room.setLocation(location);
        room.setVerify("0");
        room.setComment(comment);
        room.setBedroom(bedroom);
        room.setBathroom(bathroom);
        room.setDate(java.sql.Date.valueOf( LocalDate.now()) );;
        room.setPhone(phone);
        System.out.println(room.toString());
        
        // upload image
        
        
       UsersDetails username = userService.findUserByUsername(p.getName());
      
        room.setUsersDetails(username);
        
        roomService.addRoom(room);
        
        // redirect to display page
            return "ownerhome";

	}
	 @RequestMapping(value="/owner/room/edit/{id}", method=RequestMethod.POST)
	    public String updateRoom(@ModelAttribute("Room") Room room ){
	        roomService.updateRoom(room);
	        return "redirect:/owner/room/show";
	        
	    }
	 
	 
	 @RequestMapping(value="/owner/room/detail/", method=RequestMethod.GET)
	    public String detailRoom( Model model, Principal p){
		 UsersDetails username = userService.findUserByUsername(p.getName());
		 model.addAttribute("userinfo", username);
	        model.addAttribute("roomlist", roomService.getRoomByOwnerId(username));
	        
	    return "room";
	    }
	 
	 @RequestMapping(value="/owner/room/show/", method=RequestMethod.GET)
	 public String displayRoom(Principal p,Model model) {
		 UsersDetails username = userService.findUserByUsername(p.getName());
		 model.addAttribute("userinfo", username);
		 model.addAttribute("roomlist", roomService.getRoomByOwnerId(username));
		
	        return "room";
		 
	 }
	 
	 @GetMapping("/owner/room/delete/{id}")
	    public String deleteRoom(@PathVariable("id") int id){
	        Room room = new Room();
	       room.setId(id);
	      roomService.deleteRoom(room);
	        return "redirect:/owner/home";
	 }
}

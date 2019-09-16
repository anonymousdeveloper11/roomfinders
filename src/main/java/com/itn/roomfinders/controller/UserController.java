package com.itn.roomfinders.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.itn.roomfinders.model.UsersDetails;
import com.itn.roomfinders.service.UserService;




@Controller
@RequestMapping(value="/admin/users")

public class UserController {
	@Autowired
    UserService userService;
	@GetMapping("/show")
    public ModelAndView showUsersDetails( ModelAndView mv){
    mv.addObject("userlist", userService.getAllUsersDetails());
    mv.setViewName("usersDetails");
    return mv;
        
    
}


@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
public String editUsersDetails(@PathVariable("id") int uid, Model model){
    model.addAttribute("usersdata", userService.getUsersDetailsById(uid));
    model.addAttribute("edit", "true");
return "usersDetails";
}



@PostMapping("/update")
public ModelAndView updateUsersDetails(ModelAndView mv, @ModelAttribute("usersDetails") UsersDetails usersDetails){
    System.out.println(usersDetails.getId());
    //save it to database
    return mv;
}
    
    
    
@GetMapping("/delete/{id}")
public String deleteUsersDetails(@PathVariable("id") int id){
    UsersDetails usersDetails = new UsersDetails();
   usersDetails.setId(id);
  userService.deleteUsersDetails(id);
    return "redirect:/admin/user/show";
}
    
   

}

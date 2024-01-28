package com.flight_reservation_app_5.flight_reservation_app_5.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_reservation_app_5.flight_reservation_app_5.Repository.UserRepository;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.User;

@Controller
public class UserController {
	
	@Autowired
	private UserRepository userRepo;
	
	
	@RequestMapping("/showloginpage")
	public String showloginpage() {
		return "login/login";
	}

    @RequestMapping("/showReg")
    public String showReg(){
        return "login/showReg";
    }
    
    @RequestMapping("/saveReg")
    public String saveReg (@ModelAttribute("user") User user) {
    	userRepo.save(user);
    	return "login/login";
    }
    
    @RequestMapping("/verifylogin")
    public String verifylogin(
    		@RequestParam("email") String email, @RequestParam("password") String password,ModelMap model) {
  User user = userRepo.findByEmail(email);// we can usr getByEmail or readByEmail
  if(user.getEmail().equals(email) && user.getPassword().equals(password)) {
	  return "findFlights";
  }else {
	  model.addAttribute("error",
			  "invalid userName and Password !! Enter valid usrname/password");
    	return "login/login";
    }
    } 
}

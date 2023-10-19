package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import beans.UserBean;

@Controller
@RequestMapping("/user")
public class UserController {

	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid UserBean userBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/join";
		}
		
		return "user/join_success";
	}
	
	@GetMapping("/login")
	public String login() {
		return "user/login";
	}
	
	@GetMapping("/modify_user")
	public String modify_user() {
		return "user/modify_user";
	}
}

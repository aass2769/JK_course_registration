package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import beans.UserBean;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/join")
	public String join(UserBean userBean) {
		return "user/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid UserBean userBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/join";
		}
		
		userService.setUserSignUp(userBean);
		
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

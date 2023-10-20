package controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import beans.UserBean;
import service.UserService;
import validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	//로그인 sessionScope 빈
	@Resource(name = "userSession")
	private UserBean userSession;

	@GetMapping("/join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "user/join";
	}
	
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/join";
		}
		
		//회원가입 메서드
		userService.setUserSignUp(joinUserBean);
		
		return "user/join_success";
	}
	
	@GetMapping("/login")
	public String login(@ModelAttribute("loginUserBean") UserBean loginUserBean,
						@RequestParam(value="fail", defaultValue ="false") boolean fail,
						Model model) {
		
		model.addAttribute("fail", fail);
		
		return "user/login";
	}
	
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("loginUserBean") UserBean loginUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/login";
		}
		
		//로그인 메서드
		UserBean userCheck = userService.userLoginIn(loginUserBean);
		
		//sessionScope로 등록한 userSession의 userLogin이 true면 성공. false면 실패.
		//db에서 가져온 userCheck가 null이 아니라면 성공
		if(userSession.isUserLogin() == true && userCheck != null) {
			return "user/login_success";
		} else {
			return "user/login_fail";
		}
	}
	
	@GetMapping("/modify_user")
	public String modify_user() {
		return "user/modify_user";
	}
	
	//@InitBinder 어노테이션은 컨트롤러 내에서 데이터 바인딩 및 유효성 검사를 커스터마이징할 떄 사용됨.
	//WebDataBinder 객체를 인자로 받아서 데이터 바인딩 및 검증을 구성함.
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		//UserValidator라는 유효성 검사기(Validator)를 생성하고, 이를 WebDataBinder에 추가합니다.
		//이렇게 하면 해당 컨트롤러에서 사용하는 데이터 모델(UserBean 객체)의 유효성 검사가 UserValidator를 통해 수행된다.
		UserValidator validator = new UserValidator();
		binder.addValidators(validator);
	}
}

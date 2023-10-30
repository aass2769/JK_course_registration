package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import beans.CourseBean;
import service.TopService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private TopService topService;
	
	@GetMapping("/detail")
	public String detail(@RequestParam("cr_key") int cr_key, @RequestParam("cr_course") String cr_course, Model model) {
		
		//게시판 식별을 위한 키, 일단 model에 저장함..후에 로그인한 회원의 빈에 담을지..고민..
		model.addAttribute("cr_key", cr_key);
		model.addAttribute("cr_course", cr_course);
		
		return "board/detail";
	}
	
	@GetMapping("/create")
	public String create( Model model) {
		
		/*select 선택에서 가져오기 위한 list*/
		List<CourseBean> course_list = topService.courseList();
		model.addAttribute("course_list", course_list);
		
		return "board/create";
	}
	
	@GetMapping("/read")
	public String read(@RequestParam("cr_key") int cr_key, @RequestParam("cr_course") String cr_course, Model model) {
		
		//게시판 식별을 위한 키, 일단 model에 저장함..후에 로그인한 회원의 빈에 담을지..고민..
		model.addAttribute("cr_key", cr_key);
		model.addAttribute("cr_course", cr_course);
		
		return "board/read";
	}
	
	
	@GetMapping("/IT_dev")
	public String IT_dev() {
		
		return "board/board_main";
	}
	
	@GetMapping("/WEB_des")
	public String WEB_des() {
		
		return "board/board_main";
	}
	
	@GetMapping("/game")
	public String game() {
		
		return "board/board_main";
	}
	
	@GetMapping("/Tax_act")
	public String Tax_act() {
		
		return "board/board_main";
	}

}

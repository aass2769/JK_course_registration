package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/detail")
	public String detail(@RequestParam("mj_key") int mj_key, @RequestParam("mj_title") String mj_title, Model model) {
		
		//게시판 식별을 위한 키, 일단 model에 저장함..후에 로그인한 회원의 빈에 담을지..고민..
		model.addAttribute("mj_key", mj_key);
		model.addAttribute("mj_title", mj_title);
		
		return "board/detail";
	}
	
	@GetMapping("/read")
	public String read() {
		
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

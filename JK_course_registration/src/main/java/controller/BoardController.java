package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/main")
	public String main() {
		
		return "board/main";
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

package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/IT_dev")
	public String IT_dev() {
		
		return "board_main";
	}
	
	@GetMapping("/WEB_des")
	public String WEB_des() {
		
		return "board_main";
	}
	
	@GetMapping("/game")
	public String game() {
		
		return "board_main";
	}
	
	@GetMapping("/Tax_act")
	public String Tax_act() {
		
		return "board_main";
	}

}

package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/board_main")
	public String board_main() {
		return "board/board_main";
	}
	
	@GetMapping("/board_modify")
	public String board_modify() {
		return "board/board_modify";
	}
	
	@GetMapping("/board_read")
	public String board_read() {
		return "board/board_read";
	}
	
	@GetMapping("/board_write")
	public String board_write() {
		return "board/board_write";
	}
	
	@GetMapping("/index")
	public String index() {
		return "board/index";
	}
}

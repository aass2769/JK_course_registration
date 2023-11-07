package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import beans.BoardBean;
import beans.CourseBean;
import beans.UserBean;
import service.BoardService;
import service.TopService;

@Controller
@RequestMapping("/board")
public class BoardController {

	//로그인 sessionScope 빈
	@Resource(name = "userSession")
	private UserBean userSession;
	
	@Autowired
	private TopService topService;
	
	@Autowired
	private BoardService boardService;
	
	/*게시글 목록 페이지*/
	@GetMapping("/detail")
	public String detail(@RequestParam("cr_key") int cr_key, @RequestParam("cr_course") String cr_course, Model model) {
		
		//게시판 카테고리 식별을 위한 키
		model.addAttribute("cr_key", cr_key);
		model.addAttribute("cr_course", cr_course);
		
		/*게시글 목록 불러오기*/
		List<BoardBean> board_list = boardService.getBoardList(cr_key);
		model.addAttribute("board_list", board_list);
		
		return "board/detail";
	}
	
	/*게시글 작성 페이지*/
	@GetMapping("/create")
	public String create(Model model, @ModelAttribute("addBoardBean") BoardBean addBoardBean) {
		
		/*select 선택에서 가져오기 위한 list*/
		List<CourseBean> course_list = topService.courseList();
		
		model.addAttribute("course_list", course_list);
		
		return "board/create";
	}
	
	/*게시글 작성하는 과정 처리하는 코드*/
	/*BindingResult는 바인딩의 대상이 되는 객체 바로 뒤에 위치해야 한다.*/
	@PostMapping("/create_pro")
	public String create_pro(@Valid @ModelAttribute("addBoardBean") BoardBean addBoardBean, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "board/create";
		}
		
		boardService.addBoard(addBoardBean);
		
		return "board/create_done";
	}
	
	
	/*게시글 읽기 페이지*/
	@GetMapping("/read")
	public String read(@RequestParam("cr_key") int cr_key, @RequestParam("cr_course") String cr_course, Model model) {
		
		//게시판 카테고리 식별을 위한 키
		model.addAttribute("cr_key", cr_key);
		model.addAttribute("cr_course", cr_course);
		
		return "board/read";
	}
	
	
	

}

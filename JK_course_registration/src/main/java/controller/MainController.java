package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import beans.MajorBean;
import service.TopService;

@Controller
public class MainController {

	@Autowired
	private TopService topService;
	
	@GetMapping("/main")
	public String main(Model model) {
		
		List<MajorBean> major_list = topService.majorList();
		model.addAttribute("major_list", major_list);
		
		return "main";
	}
	
}

package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import beans.CourseBean;
import service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@GetMapping("/main")
	public String main(Model model) {
		
		List<CourseBean> allCategoryList = mainService.getSubjectsAllCategory();
		model.addAttribute("allCategoryList", allCategoryList);
		
		return "main";
	}
	
}

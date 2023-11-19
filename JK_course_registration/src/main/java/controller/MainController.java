package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import beans.CourseBean;
import service.CourseService;
import service.MainService;

@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@Autowired
	private CourseService courseService;
	
	@GetMapping("/main")
	public String main(Model model) {
		
		List<CourseBean> allCategoryList = mainService.getSubjectsAllCategory();
		model.addAttribute("allCategoryList", allCategoryList);
		
		List<CourseBean> courseList = courseService.getCourseList();
		model.addAttribute("courseList", courseList);
		
		List<CourseBean> subjectsList = courseService.getSubjectCategory();
		model.addAttribute("subjectsList", subjectsList);
		
		return "main";
	}
	
}

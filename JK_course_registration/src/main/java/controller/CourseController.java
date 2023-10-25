package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import beans.CourseBean;
import service.CourseService;

@Controller
@RequestMapping("/course")
public class CourseController {

	@Autowired
	private CourseService courseService;
	
	@GetMapping("/subjects")
	public String subjects() {
		return "course/subjects";
	}
	
	@GetMapping("/subject_view")
	public String subject_view(Model model) {
		
		CourseBean courseBean = courseService.getCourseInfo(1);
		model.addAttribute("courseBean", courseBean);
		
		return "course/subject_view";
	}
}

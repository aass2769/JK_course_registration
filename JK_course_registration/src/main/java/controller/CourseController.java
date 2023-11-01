package controller;

import java.util.List;

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
	public String subjects(int sb_category, Model model) {
		
		//한 과정의 과목들에 대한 정보를 가져오는 메서드
		List<CourseBean> subjectsList = courseService.getSubjectsCategory(sb_category);
		model.addAttribute("subjectsList", subjectsList);
		
		return "course/subjects";
	}
	
	@GetMapping("/subject_view")
	public String subject_view(int cr_key, Model model) {
		
		//한 과목의 정보를 가져오는 메서드
		List<CourseBean> subjectInfoList = courseService.getSubjectInfo(cr_key);
		model.addAttribute("subjectInfoList", subjectInfoList);
		
		return "course/subject_view";
	}
	
	@GetMapping("/registration")
	public String course_registration() {
		return "course/registration";
	}
}

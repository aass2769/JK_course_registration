package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		List<CourseBean> subjectsList = courseService.getSubjectsOneCategory(sb_category);
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
	public String registration(@ModelAttribute("registrationBean") CourseBean registrationBean, Model model) {
		
		System.out.println(registrationBean.getSb_category());
		System.out.println(registrationBean.getSb_key());
		
		//검색 select태그에 사용할 sb_category와 course이름을 가져오는 메서드
		List<CourseBean> courseList = courseService.getCourseList();
		
		if(registrationBean.getSb_category() == 0 && registrationBean.getSb_key() == 0) {
			
			//수강신청 페이지의 전체 과목들에 대한 정보리스트를 가져오는 메서드
			List<CourseBean> duplicateCheckRgList = courseService.getRegistrationList();
			model.addAttribute("duplicateCheckRgList", duplicateCheckRgList);
			
		} else {
			
			//수강신청 페이지의 검색한 과목들에 대한 정보리스트를 가져오는 메서드
			List<CourseBean> duplicateCheckRgList = courseService.getRegistrationSearchList(registrationBean);
			System.out.println(duplicateCheckRgList.size());
			model.addAttribute("duplicateCheckRgList", duplicateCheckRgList);
		}
		
		
		
		//수강신청 페이지의 전체 과목들 개수를 가져오는 메서드
		int subjectCount = courseService.getSubjectCount();
		
		
		model.addAttribute("subjectCount", subjectCount);
		model.addAttribute("courseList", courseList);
		
		return "course/registration";
	}
	
	@PostMapping("/registration_pro")
	public String registration_pro(@ModelAttribute("registrationBean") CourseBean registrationBean, @RequestParam int sb_key) {
		
		//수강신청을 했던 항목인지 체크하는 메서드
		boolean checkCourse = courseService.getCheckCourseId(sb_key);
		if(checkCourse == false) {
			
			return "course/registration_fail";
		}
		//수강신청 하는 메서드
		courseService.setCourseRegistration(sb_key);
		
		
		return "course/registration_success";
	}
	
	
	@GetMapping("/registration_check")
	public String registration_check(Model model) {
		
		//수강신청조회 페이지의 신청했던 과목들에 대한 정보리스트를 가져오는 메서드
		List<CourseBean> registrationCheckList = courseService.getRegistrationCheckList();
		int registrationCheckCount = courseService.getRegistrationCheckCount();
		model.addAttribute("registrationCheckList", registrationCheckList);
		model.addAttribute("registrationCheckCount", registrationCheckCount);
		
		return "course/registration_check";
	}
	
	@PostMapping("/registrationDelete_pro")
	public String registrationDelete_pro(int rg_key) {
		
		courseService.setRegistrationDelete(rg_key);
		
		return "course/registration_delete";
	}
}

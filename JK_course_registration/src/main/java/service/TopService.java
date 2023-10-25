package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.CourseBean;
import dao.TopDao;

@Service
public class TopService {

	@Autowired
	private TopDao topDao;
	
	public List<CourseBean> courseList(){
		
		List<CourseBean> course_list = topDao.courseList();
		
		return course_list;
	}
}

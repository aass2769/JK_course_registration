package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.CourseBean;
import dao.CourseDao;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public CourseBean getCourseInfo(int cr_key) {
		return courseDao.getCourseInfo(cr_key);
	}
}

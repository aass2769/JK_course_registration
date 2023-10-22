package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.CourseBean;
import dao.CourseDao;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public CourseBean getMajorInfo(int mj_key) {
		return courseDao.getMajorInfo(mj_key);
	}
}

package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.CourseBean;
import mapper.CourseMapper;

@Repository
public class CourseDao {

	@Autowired
	private CourseMapper courseMapper;
	
	
	public CourseBean getCourseInfo(int cr_key) {
		return courseMapper.getCourseInfo(cr_key);
	}
}

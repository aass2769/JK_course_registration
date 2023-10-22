package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.CourseBean;
import mapper.CourseMapper;

@Repository
public class CourseDao {

	@Autowired
	private CourseMapper courseMapper;
	
	
	public CourseBean getMajorInfo(int mj_key) {
		return courseMapper.getMajorInfo(mj_key);
	}
}

package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.CourseBean;
import mapper.CourseMapper;

@Repository
public class CourseDao {

	@Autowired
	private CourseMapper courseMapper;
	
	public List<CourseBean> getSubjectsCategory(int sb_category){
		
		List<CourseBean> subjectsList = courseMapper.getSubjectsCategory(sb_category);
		
		return subjectsList;
	}
	
	public List<CourseBean> getSubjectInfo(int cr_key){
		
		List<CourseBean> subjectInfoList = courseMapper.getSubjectInfo(cr_key);
		
		return subjectInfoList;
	}
}

package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.CourseBean;
import dao.CourseDao;

@Service
public class CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public List<CourseBean> getSubjectsOneCategory(int sb_category){
		
		List<CourseBean> subjectsList = courseDao.getSubjectsOneCategory(sb_category);
		
		return subjectsList;
	}
	
	public List<CourseBean> getSubjectInfo(int cr_key){
		
		List<CourseBean> subjectInfoList = courseDao.getSubjectInfo(cr_key);
		
		return subjectInfoList;
	}
}

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
	
	public List<CourseBean> majorList(){
		
		List<CourseBean> major_list = topDao.majorList();
		
		return major_list;
	}
}

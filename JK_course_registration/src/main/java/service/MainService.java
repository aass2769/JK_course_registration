package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.CourseBean;
import dao.MainDao;

@Service
public class MainService {

	@Autowired
	private MainDao mainDao;
	
	public List<CourseBean> getSubjectsAllCategory(){
		
		List<CourseBean> SubjectsAllCategory = mainDao.getSubjectsAllCategory();
		for(CourseBean bean: SubjectsAllCategory) {
			System.out.println(bean.getCr_course());
			System.out.println(bean.getSb_photo());
		}
		
		return SubjectsAllCategory;
	}
}

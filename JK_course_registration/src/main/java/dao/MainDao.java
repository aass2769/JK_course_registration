package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.CourseBean;
import mapper.MainMapper;

@Repository
public class MainDao {

	@Autowired
	private MainMapper mainMapper;
	
	public List<CourseBean> getSubjectsAllCategory(){
		
		List<CourseBean> SubjectsAllCategory = mainMapper.getSubjectsAllCategory();
		
		return SubjectsAllCategory;
	}
}

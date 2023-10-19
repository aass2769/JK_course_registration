package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.MajorBean;
import dao.TopDao;

@Service
public class TopService {

	@Autowired
	private TopDao topDao;
	
	public List<MajorBean> majorList(){
		
		List<MajorBean> major_list = topDao.majorList();
		
		return major_list;
	}
}

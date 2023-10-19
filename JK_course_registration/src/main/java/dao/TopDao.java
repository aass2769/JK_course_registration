package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.MajorBean;
import mapper.TopMapper;

@Repository
public class TopDao {

	@Autowired
	private TopMapper topMapper;
	
	public List<MajorBean> majorList(){
		
		List<MajorBean> major_list = topMapper.majorList();
		
		return major_list;
	}
}

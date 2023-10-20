package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import beans.MajorBean;

public interface TopMapper {

	@Select("select mj_key,mj_title from major_table")
	List<MajorBean> majorList();	
	
}

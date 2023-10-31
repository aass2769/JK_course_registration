package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import beans.CourseBean;

public interface TopMapper {

	@Select("select cr_course from course_table")
	List<CourseBean> courseList();
	
}

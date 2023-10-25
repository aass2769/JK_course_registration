package mapper;

import org.apache.ibatis.annotations.Select;

import beans.CourseBean;

public interface CourseMapper {

	@Select("SELECT * FROM major_table "
			+ "WHERE cr_key = #{cr_key}")
	public CourseBean getCourseInfo(int cr_key);
}

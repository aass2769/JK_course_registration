package mapper;

import org.apache.ibatis.annotations.Select;

import beans.CourseBean;

public interface CourseMapper {

	@Select("SELECT * FROM major_table "
			+ "WHERE mj_key = #{mj_key}")
	public CourseBean getMajorInfo(int mj_key);
}

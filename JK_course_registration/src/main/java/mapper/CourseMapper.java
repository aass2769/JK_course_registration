package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import beans.CourseBean;

public interface CourseMapper {
	
	@Select("SELECT a.cr_key, a.cr_course, b.sb_category, b.sb_subject, b.sb_photo, b.ct_key "
			+ "FROM COURSE_TABLE a "
			+ "INNER JOIN subject_table b "
			+ "on a.sb_key = b.sb_key "
			+ "WHERE b.sb_category = #{sb_category}")
	List<CourseBean> getSubjectsCategory(int sb_category);
	
	@Select("SELECT a.cr_key, a.cr_course, a.sb_key, b.sb_subject, b.sb_photo, c.ct_key, c.sb_category, c.ct_title, c.ct_description "
			+ "FROM COURSE_TABLE a "
			+ "LEFT OUTER JOIN subject_table b "
			+ "ON a.sb_key = b.sb_key "
			+ "LEFT OUTER JOIN subject_content_table c "
			+ "ON b.ct_key = c.sb_category "
			+ "WHERE a.cr_key = #{cr_key}"
			+ "ORDER BY a.cr_key, b.sb_key, c.ct_key")
	List<CourseBean> getSubjectInfo(int cr_key);
}

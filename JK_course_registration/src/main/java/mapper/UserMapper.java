package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import beans.UserBean;

public interface UserMapper {

	//회원가입 쿼리
	@Insert("INSERT INTO user_table(user_key, user_id, user_pw, user_name) "
			+ "VALUES (user_seq.NEXTVAL, #{user_id}, #{user_pw}, #{user_name})")
	void setUserSignUp(UserBean joinUserBean);
	
	//중복확인을 위해 유저아이디를 가져오는 메서드
	@Select("SELECT user_id "
			+ "FROM user_table "
			+ "WHERE user_id = #{user_id}")
	String checkDuplicateId(String user_id);
	
	//로그인 메서드
	@Select("SELECT user_key, user_id, user_pw "
			+ "FROM user_table "
			+ "WHERE user_id = #{user_id} AND user_pw = #{user_pw}")
	UserBean userLoginIn(UserBean loginUserBean);
}

package mapper;

import org.apache.ibatis.annotations.Insert;

import beans.UserBean;

public interface UserMapper {

	@Insert("INSERT INTO user_table(user_key, user_id, user_pw, user_name) "
			+ "VALUES (user_seq.NEXTVAL, #{user_id}, #{user_pw}, #{user_name})")
	void setUserSignUp(UserBean userBean);
}

package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.UserBean;
import mapper.UserMapper;

@Repository
public class UserDao {

	@Autowired
	private UserMapper userMapper;
	
	//회원가입
	public void setUserSignUp(UserBean joinUserBean) {
		userMapper.setUserSignUp(joinUserBean);
	}
	
	//중복확인을 위해 유저아이디를 가져오는 메서드
	public String checkDuplicateId(String user_id) {
		return userMapper.checkDuplicateId(user_id);
	}
}

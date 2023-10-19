package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.UserBean;
import mapper.UserMapper;

@Repository
public class UserDao {

	@Autowired
	private UserMapper userMapper;
	
	public void setUserSignUp(UserBean userBean) {
		userMapper.setUserSignUp(userBean);
	}
}

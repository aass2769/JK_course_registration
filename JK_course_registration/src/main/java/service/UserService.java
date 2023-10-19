package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.UserBean;
import dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public void setUserSignUp(UserBean userBean) {
		userDao.setUserSignUp(userBean);
	}
}

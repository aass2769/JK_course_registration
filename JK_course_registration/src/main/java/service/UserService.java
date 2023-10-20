package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.UserBean;
import dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	//회원가입
	public void setUserSignUp(UserBean joinUserBean) {
		userDao.setUserSignUp(joinUserBean);
	}
	
	//중복확인을 위해 유저아이디를 가져오는 메서드
	public boolean checkDuplicateId(String user_id) {
		
		String duplicate_id = userDao.checkDuplicateId(user_id);
		
		//가져온 값이 null이면 db에 user_id값이 없다는 말이므로 true 리턴
		if(duplicate_id == null) {
			return true;
		} else {
			return false;
		}
	}
}

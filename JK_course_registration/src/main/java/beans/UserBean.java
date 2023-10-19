package beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class UserBean {

	private int user_key;
	
	@Size(min=4, max=16)
	@Pattern(regexp = "[a-zA Z0-9]*")
	private String user_id;
	
	@Size(min = 8, max = 16)
	@Pattern(regexp = "[a-zA Z0-9]*")
	private String user_pw;
	
	@Size(min = 8, max = 16)
	@Pattern(regexp = "[a-zA Z0-9]*")
	private String user_pw2;
	
	@Size(min=2, max=5)
	@Pattern(regexp = "[가-힣]*")
	private String user_name;
	
	
	public int getUser_key() {
		return user_key;
	}
	public void setUser_key(int user_key) {
		this.user_key = user_key;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	
	public String getUser_pw2() {
		return user_pw2;
	}
	public void setUser_pw2(String user_pw2) {
		this.user_pw2 = user_pw2;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
}
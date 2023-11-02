package beans;

/*게시판, 게시판 좋아요, 게시판 댓글*/
public class BoardBean {

	/*게시판*/
	private int brd_key;
	private int user_key; //FK, 게시판 + 게시판 좋아요 + 게시판 댓글 여부
	private int cr_key; //FK, 게시판 + 게시판 좋아요 + 게시판 댓글 여부
	private int brd_writer;
	private String brd_date;
	private String brd_title;
	private String brd_content;
	private String brd_file;
	private int brd_hit;
	private String User_name;
	private String cr_course;
	
	/*게시판 좋아요 여부*/
	private int brd_like_key;
	private int brd_likes_count;
	
	/*게시판 댓글*/
	private int brd_ct_key;

	public int getBrd_key() {
		return brd_key;
	}

	public void setBrd_key(int brd_key) {
		this.brd_key = brd_key;
	}

	public int getUser_key() {
		return user_key;
	}

	public void setUser_key(int user_key) {
		this.user_key = user_key;
	}

	public int getCr_key() {
		return cr_key;
	}

	public void setCr_key(int cr_key) {
		this.cr_key = cr_key;
	}

	public int getBrd_writer() {
		return brd_writer;
	}

	public void setBrd_writer(int brd_writer) {
		this.brd_writer = brd_writer;
	}

	public String getBrd_date() {
		return brd_date;
	}

	public void setBrd_date(String brd_date) {
		this.brd_date = brd_date;
	}

	public String getBrd_title() {
		return brd_title;
	}

	public void setBrd_title(String brd_title) {
		this.brd_title = brd_title;
	}

	public String getBrd_content() {
		return brd_content;
	}

	public void setBrd_content(String brd_content) {
		this.brd_content = brd_content;
	}

	public String getBrd_file() {
		return brd_file;
	}

	public void setBrd_file(String brd_file) {
		this.brd_file = brd_file;
	}

	public int getBrd_hit() {
		return brd_hit;
	}

	public void setBrd_hit(int brd_hit) {
		this.brd_hit = brd_hit;
	}

	public int getBrd_like_key() {
		return brd_like_key;
	}

	public void setBrd_like_key(int brd_like_key) {
		this.brd_like_key = brd_like_key;
	}

	public int getBrd_likes_count() {
		return brd_likes_count;
	}

	public void setBrd_likes_count(int brd_likes_count) {
		this.brd_likes_count = brd_likes_count;
	}

	public int getBrd_ct_key() {
		return brd_ct_key;
	}

	public void setBrd_ct_key(int brd_ct_key) {
		this.brd_ct_key = brd_ct_key;
	}

	public String getUser_name() {
		return User_name;
	}

	public void setUser_name(String user_name) {
		User_name = user_name;
	}

	public String getCr_course() {
		return cr_course;
	}

	public void setCr_course(String cr_course) {
		this.cr_course = cr_course;
	}
	
}

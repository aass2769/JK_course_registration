package beans;

/*교육 과정 빈*/
public class CourseBean {

	private int cr_key;
	private String cr_course;
	
	private int sb_key;
	private int sb_category;
	private String sb_subject;
	private String sb_photo;
	
	private int ct_key;
	private String sb_title;
	private String sb_description;
	
	public int getCr_key() {
		return cr_key;
	}
	public void setCr_key(int cr_key) {
		this.cr_key = cr_key;
	}
	public String getCr_course() {
		return cr_course;
	}
	public void setCr_course(String cr_course) {
		this.cr_course = cr_course;
	}
	public int getSb_key() {
		return sb_key;
	}
	public void setSb_key(int sb_key) {
		this.sb_key = sb_key;
	}
	public int getSb_category() {
		return sb_category;
	}
	public void setSb_category(int sb_category) {
		this.sb_category = sb_category;
	}
	public String getSb_subject() {
		return sb_subject;
	}
	public void setSb_subject(String sb_subject) {
		this.sb_subject = sb_subject;
	}
	public String getSb_photo() {
		return sb_photo;
	}
	public void setSb_photo(String sb_photo) {
		this.sb_photo = sb_photo;
	}
	public int getCt_key() {
		return ct_key;
	}
	public void setCt_key(int ct_key) {
		this.ct_key = ct_key;
	}
	public String getSb_title() {
		return sb_title;
	}
	public void setSb_title(String sb_title) {
		this.sb_title = sb_title;
	}
	public String getSb_description() {
		return sb_description;
	}
	public void setSb_description(String sb_description) {
		this.sb_description = sb_description;
	}
	
}

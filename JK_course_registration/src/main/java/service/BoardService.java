package service;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import beans.BoardBean;
import beans.UserBean;
import dao.BoardDao;

@Service
//파일업로드 경로있는 프로퍼티 파일 로드.
@PropertySource("/WEB-INF/properties/fileUploadOption.properties")
public class BoardService {

	@Value("${path.upload}") //@value를 이용하여 프로퍼티 파일의 path.upload를
	private String path_upload; //path_upload라는 문자열 변수에 주입.
	
	@Autowired
	private BoardDao boardDao;
	
	@Resource(name = "userSession")
	private UserBean userSession;
	
	//게시물 목록 리스트 코드
	public List<BoardBean> getBoardList(int cr_key){
		
		List<BoardBean> board_list = boardDao.getBoardList(cr_key);
		
		return board_list;
	}
	
	//게시물 작성 코드
	public void addBoard(BoardBean addBoardBean) {
		//user_key를 session에서 받아와서 빈에 set함.
		addBoardBean.setUser_key(userSession.getUser_key());
		//Brd_writer에 user_key를 넣어서, 로그인한 글쓴이와 글작성자 인덱스가 일치하게 함.
		addBoardBean.setBrd_writer(userSession.getUser_key());
		
		boardDao.addBoard(addBoardBean);
	}
	
	//cr_course 가져오기
	public String selCourse(int cr_key) {
		String cr_course = boardDao.selCourse(cr_key);
		
		return cr_course;
	}
	
	
	//게시물 읽기 코드
	public BoardBean readBoard(int brd_key) {
		BoardBean readBoard = boardDao.readBoard(brd_key);
		
		return readBoard;
	}
	
	//게시글 조회수 증가 코드
	public void addHit(int brd_key) {
		boardDao.addHit(brd_key);
	}
	
	//게시글 수정 코드
	public void editBoard(BoardBean editBoardBean) {
		boardDao.editBoard(editBoardBean);
	}
	
	//게시글 삭제 코드
	public void delBoard(int brd_key) {
		boardDao.delBoard(brd_key);
	}
	
	
	//파일업로드한거 저장하는 코드
	//(클라이언트에서 전송된 파일을 서버에 업로드하고, 새로운 파일 이름을 생성하여 반환하는 역할)
	private String saveUploadFile(MultipartFile upload_file) {
		
		//System.currentTimeMillis() : 현재 시간을 나타내는 메서드로, 파일 이름의 중복을 피하고자 사용됨.
		//~.getOriginalFilename() : 클라이언트가 업로드한 파일의 원래 이름을 가져옴.
		//==그래서 최종적으로, 두 값을 조합하여 새로운 파일 이름을 생성함.
		String file_name = System.currentTimeMillis() + "_" + upload_file.getOriginalFilename();
		
		try {
			//~.transferTo : 업로드 된 파일 데이터를 지정된 경로에 저장함.
			//프로퍼티 파일에서 읽어온, 업로드 된 파일을 저장할 디렉토리 경로(path_upload)에 파일이 저장됨.
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return file_name; //업로드 된 파일의 새로운 이름인 file_name을 반환.
	}
}

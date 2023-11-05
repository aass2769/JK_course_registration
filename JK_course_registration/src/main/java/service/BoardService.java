package service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import beans.BoardBean;
import dao.BoardDao;

@Service
//파일업로드 경로있는 프로퍼티 파일 로드.
@PropertySource("/WEB-INF/properties/fileUploadOption.properties")
public class BoardService {

	@Value("${path.upload}") //@value를 이용하여 프로퍼티 파일의 path.upload를
	private String path_upload; //path_upload라는 문자열 변수에 주입.
	
	@Autowired
	private BoardDao boardDao;
	
	//게시물 목록 리스트 코드
	public List<BoardBean> getBoardList(){
		
		List<BoardBean> board_list = boardDao.getBoardList();
		
		return board_list;
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

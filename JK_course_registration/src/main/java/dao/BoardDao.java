package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.BoardBean;
import mapper.BoardMapper;

@Repository
public class BoardDao {

	@Autowired
	private BoardMapper boardMapper;
	
	//글 목록
	public List<BoardBean> getBoardList(int cr_key){
		List<BoardBean> board_list = boardMapper.getBoardList(cr_key);
		
		return board_list;
	}
	
	//글 작성
	//return 타입이 없으니까 메서드를 그대로 호출해줌.
	public void addBoard(BoardBean addBoardBean) {
		boardMapper.addBoard(addBoardBean);
	}
	
	//cr_course 가져오기
	public String selCourse(int cr_key) {
		String cr_course = boardMapper.selCourse(cr_key);
		
		return cr_course;
	}
	
	//글 읽기
	public BoardBean readBoard(int brd_key) {
		BoardBean readBoard = boardMapper.readBoard(brd_key);
		
		return readBoard;
	}
	
	//조회수 증가
	public void addHit(int brd_key) {
		boardMapper.addHit(brd_key);
	}
	
	//글 수정
	public void editBoard(BoardBean editBoardBean) {
		boardMapper.editBoard(editBoardBean);
	}
	
	//글 삭제
	public void delBoard(int brd_key) {
		boardMapper.delBoard(brd_key);
	}
}

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
	
	public List<BoardBean> getBoardList(int cr_key){
		List<BoardBean> board_list = boardMapper.getBoardList(cr_key);
		
		return board_list;
	}
}

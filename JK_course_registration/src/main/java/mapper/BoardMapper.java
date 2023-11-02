package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import beans.BoardBean;

public interface BoardMapper {

	@Select("select A.BRD_KEY, A.BRD_TITLE, C.USER_NAME, A.BRD_DATE, A.BRD_HIT, B.brd_likes_count "
			+ "FROM board_table A "
			+ "LEFT OUTER JOIN BOARD_LIKE_TABLE B "
			+ "ON A.BRD_KEY = B.BRD_KEY "
			+ "LEFT OUTER JOIN USER_TABLE C "
			+ "ON B.USER_KEY = C.USER_KEY "
			+ "ORDER BY A.BRD_KEY DESC")
		List<BoardBean> getBoardList();
}

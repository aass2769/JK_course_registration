package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import beans.BoardBean;

public interface BoardMapper {

	/*글 목록 불러오는 쿼리..추후 수정 필요함.*/
	@Select("select A.BRD_KEY, A.BRD_TITLE, C.USER_NAME, A.BRD_DATE, A.BRD_HIT, B.brd_likes_count "
			+ "FROM board_table A "
			+ "LEFT OUTER JOIN BOARD_LIKE_TABLE B "
			+ "ON A.BRD_KEY = B.BRD_KEY "
			+ "LEFT OUTER JOIN USER_TABLE C "
			+ "ON A.USER_KEY = C.USER_KEY "
			+ "WHERE A.CR_KEY = #{cr_key}"
			+ "ORDER BY A.BRD_KEY DESC")
		List<BoardBean> getBoardList(int cr_key);
	
	//db에서 null을 허용으로 설정해놨어도 mybatis에서는 허용하지 않기때문에 jdbcType=VARCHAR같이 타입을 명시적으로 작성해줌.
	@Insert("INSERT INTO board_table (BRD_KEY, BRD_WRITER, BRD_DATE, BRD_NOTICE, BRD_TITLE, BRD_CONTENT, BRD_FILE, BRD_HIT, USER_KEY, CR_KEY) " 
			+ "VALUES (board_seq.nextval, #{brd_writer}, sysdate, 'N', #{brd_title}, #{brd_content}, #{brd_file, jdbcType=VARCHAR}, 0, #{user_key}, #{cr_key})" )
		void addBoard(BoardBean addBoardBean);
	
}

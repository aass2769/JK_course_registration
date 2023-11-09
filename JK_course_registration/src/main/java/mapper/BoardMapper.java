package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	
	//글 쓰기 쿼리
	//db에서 null을 허용으로 설정해놨어도 mybatis에서는 허용하지 않기때문에 jdbcType=VARCHAR같이 타입을 명시적으로 작성해줌.
	@Insert("INSERT INTO board_table (BRD_KEY, BRD_WRITER, BRD_DATE, BRD_NOTICE, BRD_TITLE, BRD_CONTENT, BRD_FILE, BRD_HIT, USER_KEY, CR_KEY) " 
			+ "VALUES (board_seq.nextval, #{brd_writer}, sysdate, 'N', #{brd_title}, #{brd_content}, #{brd_file, jdbcType=VARCHAR}, 0, #{user_key}, #{cr_key})" )
		void addBoard(BoardBean addBoardBean);
	
	/*cr_course 가져오는 쿼리..*/
	@Select("select cr_course from course_table where cr_key = #{cr_key}")
	public String selCourse(int cr_key);
	
	/*글 읽기 쿼리*/
	@Select("SELECT a.brd_key, a.brd_title, a.brd_content, a.brd_hit, a.brd_date,  a.brd_writer, b.user_name, c.brd_likes_count , d.cr_key, d.cr_course "
			+ "FROM board_table a "
			+ "LEFT OUTER JOIN user_table b ON a.user_key = b.user_key "
			+ "LEFT OUTER JOIN "
			+ "  ( SELECT BRD_KEY, COUNT(*) AS brd_likes_count "
			+ "  FROM board_like_table "
			+ "  GROUP BY BRD_KEY "
			+ ") c ON a.brd_key = c.brd_key "
			+ " LEFT OUTER JOIN course_table d "
			+" ON a.cr_key = d.cr_key "
			+ "WHERE a.brd_key = #{brd_key} ")
	BoardBean readBoard(int brd_key); 
	
	/*글 조회수 증가 쿼리*/
	@Update("update board_table set brd_hit = brd_hit + 1 where brd_key = #{brd_key}")
	public void addHit(int brd_key);
	
	/*글 수정 쿼리*/
	@Update("update board_table set brd_title = #{brd_title}, brd_content = #{brd_content} where brd_key = #{brd_key}")
	public void editBoard(BoardBean editBoardBean);
	
	/*글 삭제 쿼리*/
	@Delete("delete from board_table where brd_key = #{brd_key}")
	public void delBoard(int brd_key);
}

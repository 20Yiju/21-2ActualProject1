package handong.csee.edu.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {

	/*private JdbcTemplate template;
	private final String BOARD_INSERT = "insert into BOARD (category, title, writer, content) values (?,?,?,?)";
	private final String BOARD_UPDATE = "update BOARD set category = ?, title=?, writer=?, content=? where seq=?";
	private final String BOARD_DELETE = "delete from BOARD  where seq=?";
	private final String BOARD_GET = "select * from BOARD  where seq=?";
	private final String BOARD_LIST = "select * from BOARD order by seq desc";
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	*/
	
	SqlSession sqlSession;
	
	

	public int insertBoard(BoardVO vo) {
		System.out.println("===> JDBC로 insertBoard() 기능 처리");
		int result = sqlSession.insert("Board.insertBoard", vo);
		return result;
	}

	// 글 삭제
	public int deleteBoard(int id) {
		System.out.println("===> JDBC로 deleteBoard() 기능 처리");
		int result = sqlSession.update("Board.deleteBoard", id);
		return result;
		
	}
	
	public int updateBoard(BoardVO vo) {
		System.out.println("===> JDBC로 updateBoard() 기능 처리");
		int result = sqlSession.insert("Board.updateBoard", vo);
		return result;
	}	
	
	public BoardVO getBoard(int seq) {
		System.out.println("===> JDBC로 getBoard() 기능 처리");
		BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
		return one;
		
	}
	
	public List<BoardVO> getBoardList(){
		System.out.println("===> JDBC로 getBoardList() 기능 처리");
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;
	}
}

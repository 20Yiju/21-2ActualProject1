package handong.csee.com.board;

import java.util.List;

public class BoardServiceImpl implements BoardService {
	
	BoardDAO boardDAO;

	public int insertBoard(BoardVO vo) {
		return boardDAO.insertBoard(vo);
		
	}
	public int deleteBoard(int id) {
		return boardDAO.deleteBoard(id);
		
	}
	public int updateBoard(BoardVO vo) {
		return boardDAO.updateBoard(vo);
		
	}
	public BoardVO getBoard(int seq) {
		return boardDAO.getBoard(seq);
		
	}
	public List<BoardVO> getBoardList(){
		return boardDAO.getBoardList();
		
	}
}

package handong.csee.com.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardContoller {
	
	@Autowired
	BoardDAO boardDAO;

	@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	public String boardList( Model model) {
		model.addAttribute("list", boardDAO.getBoardList());
		return "posts";
	}
	
	@RequestMapping(value = "/board/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/board/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		int i = boardDAO.insertBoard(vo);
		if(i == 0) {
			System.out.println("데이터 추가 실패");
		}
		else {
			System.out.println("데이터 추가 성공:D");
		}
		return "redirect:list";
	}
	
	@RequestMapping(value = "/board/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardDAO.getBoard(id);
		model.addAttribute("boardVO", boardVO);
		return "editform";
	}
	

	@RequestMapping(value = "/board/editok", method = RequestMethod.POST)
	public String editPostOK(BoardVO vo) {
		int i = boardDAO.updateBoard(vo);
		if(i == 0) {
			System.out.println("데이터 수정 실패");
		}
		else {
			System.out.println("데이터 수정 성공:D");
		}
		return "redirect:list";
	}
	

	@RequestMapping(value = "/board/delete/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable("id") int id) {
		int i = boardDAO.deleteBoard(id);
		if(i == 0) {
			System.out.println("데이터 수정 실패");
		}
		else {
			System.out.println("데이터 수정 성공:D");
		}
		return "redirect:../list";
	}
}

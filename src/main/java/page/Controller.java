package page;

import java.util.ArrayList;

public class Controller {
	Service sv = new Service();
	ArrayList<Board> blist = null;
	String bcode = null;
	// 게시물 작성
	public String writeBoard(Model d,Board b) {
		d.addAttribute("게시글 작성", sv.writeBoard(b));
		return "mypage.jsp";
	}
	// 게시물 수정
	public String updateBoard(Model d, Board b) {
		b.setBcode(bcode);
		d.addAttribute("게시글 수정", sv.updateBoard(b));
		return "mypage.jsp";
	}
	// 게시물 리스트
	public String boardList(Model d,String email) {
		d.addAttribute("게시글 리스트",blist=  sv.boardList(email));
		return "mypage.jsp";
	}
	// 게시물 삭제
	public String deleteBoard(Model d,String id,String bcode) {
		d.addAttribute("게시글 삭제", sv.deleteBoard(id, bcode));
		return "mypage.jsp";
	}
	// 선택 게시물 보기
	public String setBoard(Model d,int choice,String id) {
		d.addAttribute("게시글 수정", sv.setBoard(bcode = blist.get(choice-1).getBcode(), id));
		return "mypage.jsp";
	}
}

package page;

public class Controller {
	Service sv = new Service();
	// 게시물 작성
	public String writeBoard(Model d,Board b) {
		d.addAttribute("게시글 작성", sv.writeBoard(b));
		return "mypage.jsp";
	}
	// 게시물 리스트
	public String boardList(Model d,String email) {
		d.addAttribute("게시글 작성", sv.boardList(email));
		return "mypage.jsp";
	}
}

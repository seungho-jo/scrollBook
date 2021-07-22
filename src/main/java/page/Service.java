package page;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class Service {
	Dao dao = new Dao();
	// 게시물 작성
	public String writeBoard(Board b) {
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat smd = new SimpleDateFormat("YYMMdd");
		String wdate = smd.format(cal.getTime());
		b.setBcode(b.getEmail()+wdate);
		dao.writeBoard(b);
		return "작성완료";
	}
	// 게시물 리스트
	public String boardList(String email) {
		ArrayList<Board> blist = dao.boardList(email);
		for(Board b:blist) {
			System.out.println(b.getImg());
			System.out.println("---------------------------------------");
		}
		return "출력완료";
	}
}


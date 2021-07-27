package page;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		Controller ctl = new Controller();
		Board board = new Board();
		System.out.println("로그인");
		System.out.print("아이디: ");
		String id = sc.nextLine();
		System.out.print("비밀번호: ");
		String pass = sc.nextLine();
		// 게시물 조회
		ctl.boardList(new Model(), id);
		
		// 게시물 선택 후 보기
		System.out.println("게시물 선택");
		int choice = Integer.parseInt(sc.nextLine());
		ctl.setBoard(new Model(), choice, id);
		// 게시물 수정
		System.out.println("#게시글 작성#");
		System.out.println("내용");
		String contents = sc.nextLine();
		board.setContents(contents);
		System.out.println("사진 등록");
		String img = sc.nextLine();
		board.setImg(img);
		System.out.println("태그 등록");
		String tag = sc.nextLine();
		board.setTag(tag);
		System.out.println("위치 등록");
		String loc = sc.nextLine();
		board.setLoc(loc);
		System.out.println("공개 범위");
		String pubRange = sc.nextLine();
		board.setPubRange(pubRange);
		board.setID(id);
		ctl.updateBoard(new Model(), board);
	
		/*
		// 로그인 이후 게시물 작성
		System.out.println("#게시글 작성#");
		System.out.println("내용");
		String contents = sc.nextLine();
		board.setContents(contents);
		System.out.println("사진 등록");
		String img = sc.nextLine();
		board.setImg(img);
		System.out.println("태그 등록");
		String tag = sc.nextLine();
		board.setTag(tag);
		System.out.println("위치 등록");
		String loc = sc.nextLine();
		board.setLoc(loc);
		System.out.println("공개 범위");
		String pubRange = sc.nextLine();
		board.setPubRange(pubRange);
		board.setID(id);
		ctl.writeBoard(new Model(),board);
		*/
	}

}

package page;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 게시물 작성
	public void writeBoard(Board b) {
		int num = 0;
		try {
			String sql = "select count(*) from Board";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				num = rs.getInt(1);
			}
			sql = "insert into Board values(?,?,?,?,?,?,to_date(sysdate,'yy/mm/dd'),?)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getBcode()+Integer.toString(num+1));
			pstmt.setString(2, b.getContents());
			pstmt.setString(3, b.getImg());
			pstmt.setString(4, b.getTag());
			pstmt.setString(5, b.getLoc());
			pstmt.setString(6, b.getPubRange());
			pstmt.setString(7, b.getEmail());
			pstmt.executeUpdate();
			conn.commit();
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 게시물 리스트
	public ArrayList<Board> boardList(String email) {
		ArrayList<Board> list = new ArrayList<Board>();
		try {
			String sql = "select bcode,img from Board where email = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Board b = new Board();
				b.setBcode(rs.getString("bcode"));
				b.setImg(rs.getString("img"));
				list.add(b);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
}

package com.ezv.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.ezv.Dto.MemberVO;
import com.ezv.Dto.MovieVO;
import com.ezv.Dto.ReviewVO;


public class MovieDAO {
	String id="scott";
	String pass="tiger";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getcon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection(url, id, pass);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	// 영화 상세보기 가져오기
	public MovieVO Movie(int mno){
		MovieVO mbean=new MovieVO();
		
		try {
			getcon();
			String sql="select * from ezv_movie where mno=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				mbean.setMno(rs.getInt(1));
				mbean.setMname(rs.getString(2));
				mbean.setMsubname(rs.getString(3));
				mbean.setMcontent(rs.getString(4));
				mbean.setMdirector(rs.getString(5));
				mbean.setMactor(rs.getString(6));
				mbean.setMgenre(rs.getString(7));
				mbean.setMtime(rs.getString(8));
				mbean.setMdate(rs.getString(9));
				mbean.setMgrade(rs.getString(10));
			}
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mbean;
		
	}
	
	// 리뷰 목록 2021-07-12 12:21 병규수정
	public Vector<ReviewVO> Review(int no) {
		Vector<ReviewVO> v=new Vector<ReviewVO>();
		
		try {
			getcon();
			String sql="select * from ezv_review where rmovie=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ReviewVO rvo1=new ReviewVO();
				rvo1.setRno(rs.getInt("rno"));
				rvo1.setRid(rs.getString("rid"));
				rvo1.setRmovie(rs.getString("rmovie"));
				rvo1.setRcontent(rs.getString("rcontent"));
				rvo1.setRdate(rs.getString("rdate"));
				rvo1.setRgrade(rs.getString("rgrade"));
				
				v.add(rvo1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
		
	}
	
	// 영화 리뷰 입력하기
	public int InsertMovieReview(ReviewVO vo) {
		int res=0;
		getcon();
		
		try {
			String sql="insert into ezv_review values(seq_review_rno.nextval,?,?,?,sysdate,?)";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getRid());
			pstmt.setString(2, vo.getRmovie());
			pstmt.setString(3, vo.getRcontent());			
			pstmt.setString(4, "5");
			
			res = pstmt.executeUpdate();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return res;
	}
	
	// 영화 리뷰 수정
	public void UpdateMovieReview(ReviewVO vo) {
		getcon();
		
		try {
			String sql = "update ezv_review set content=? where rno=?";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getRcontent());
			pstmt.setInt(2, vo.getRno());
			
			pstmt.executeUpdate();
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 영화 리뷰 삭제
	public void DelteMovieReview(int rno) {
		getcon();
		
		try {
			// 쿼리 준비
			String sql="delete from ezv_review where rno=?";
			// 쿼리 실행할 객체 선언
			pstmt=conn.prepareStatement(sql);
			// ?
			pstmt.setInt(1, rno);
			// 쿼리 실행
			pstmt.executeUpdate();
			//자원 반납
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
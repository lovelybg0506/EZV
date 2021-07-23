package com.ezv.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import com.ezv.Dto.MovieVO;
import com.ezv.Dto.ReviewVO;

public class MovieDAO {
	String id = "scott";
	String pass = "tiger";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	public void getcon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 영화 전체 리스트 가져오기
	public Vector<MovieVO> MovieList() {
		Vector<MovieVO> v = new Vector<MovieVO>();

		try {
			getcon();
			String sql = "select * from ezv_movie order by mno ASC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				MovieVO mbean = new MovieVO();
				mbean.setMno(rs.getInt(1));
				mbean.setMposter(rs.getString(2));
				mbean.setMname(rs.getString(3));
				mbean.setMsubname(rs.getString(4));
				mbean.setMcontent(rs.getString(5));
				mbean.setMdirector(rs.getString(6));
				mbean.setMactor(rs.getString(7));
				mbean.setMgenre(rs.getString(8));
				mbean.setMtime(rs.getString(9));
				mbean.setMdate(rs.getString(10));
				mbean.setMimg1(rs.getString(11));
				mbean.setMimg2(rs.getString(12));
				mbean.setMimg3(rs.getString(13));
				mbean.setMvideo2(rs.getString(14));
				mbean.setMvideo1(rs.getString(15));
				mbean.setMgrade(rs.getString(16));

				v.add(mbean);
			}

			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return v;
	}

	// 영화 번호대로 detail에서 리뷰, 정보 가져오기
	public MovieVO MovieCont(int mno) {
		MovieVO mbean = new MovieVO();
		
		try {
			getcon();
			String sql = "select * from ezv_movie where mno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				mbean.setMno(rs.getInt(1));
				mbean.setMposter(rs.getString(2));
				mbean.setMname(rs.getString(3));
				mbean.setMsubname(rs.getString(4));
				mbean.setMcontent(rs.getString(5));
				mbean.setMdirector(rs.getString(6));
				mbean.setMactor(rs.getString(7));
				mbean.setMgenre(rs.getString(8));
				mbean.setMtime(rs.getString(9));
				mbean.setMdate(rs.getString(10));
				mbean.setMimg1(rs.getString(11));
				mbean.setMimg2(rs.getString(12));
				mbean.setMimg3(rs.getString(13));
				mbean.setMvideo2(rs.getString(14));
				mbean.setMvideo1(rs.getString(15));
				mbean.setMgrade(rs.getString(16));
				
			}

			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mbean;
	}
	
	// 영화리스트에서 포스터/영화이름/예매율/개봉일
	public int MovieCount() {
		int count = 0;

		try {
			getcon();
			String sql = "select count(*) from ezv_movie";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			while(rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return count;
	}
	
	// 리뷰 추가
	public int reviewInsert(ReviewVO rvo) {
		int result = 0;
			try {
				getcon();
				String sql = "insert into ezv_review values(seq_review_rno.nextval,?,?,?,sysdate,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, rvo.getRid());
				pstmt.setInt(2, rvo.getRmovie());
				pstmt.setString(3, rvo.getRcontent());
				pstmt.setString(4, rvo.getRgrade());
				
				result=pstmt.executeUpdate();
				
				pstmt.close(); conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return result;
	}
	
	// 리뷰 목록
	public Vector<ReviewVO> Review(int no) {
		Vector<ReviewVO> v = new Vector<ReviewVO>();

		try {
			getcon();
			String sql = "select * from ezv_review where rmovie=? order by rdate desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ReviewVO rvo1 = new ReviewVO();
				rvo1.setRno(rs.getInt("rno"));
				rvo1.setRid(rs.getString("rid"));
				rvo1.setRmovie(rs.getInt("rmovie"));
				rvo1.setRcontent(rs.getString("rcontent"));
				rvo1.setRdate(rs.getString("rdate"));
				rvo1.setRgrade(rs.getString("rgrade"));

				v.add(rvo1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;

	}

	// 리뷰 전체 가져오기
	public ReviewVO getReviewCont(int rno) {
		ReviewVO rvo = new ReviewVO();
		getcon();

		try {
			String sql = "select * from ezv_review where rno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rvo.setRno(rs.getInt(1));
				rvo.setRid(rs.getString(2));
				rvo.setRmovie(rs.getInt(3));
				rvo.setRcontent(rs.getString(4));
				rvo.setRdate(rs.getString(5));
				rvo.setRgrade(rs.getString(6));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rvo;
	}
	
	// 영화 리뷰 수정
	public void UpdateMovieReview(ReviewVO vo) {
		getcon();
		
		try {
			String sql = "update ezv_review set rcontent=?, rdate=SYSDATE, rgrade=? where rno=?";
		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getRcontent());
			pstmt.setString(2, vo.getRgrade());
			pstmt.setInt(3, vo.getRno());

			pstmt.executeUpdate();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
/*
	// 선택한 리뷰 가져오기
	public ReviewVO getOneUpdateReview(String rid) {
		ReviewVO rvo = new ReviewVO();
		getcon();

		try {
			String sql = "select * from ezv_review where rid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rid);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				rvo.setRno(rs.getInt(1));
				rvo.setRid(rs.getString(2));
				rvo.setRmovie(rs.getInt(3));
				rvo.setRcontent(rs.getString(4));
				rvo.setRdate(rs.getString(5));
				rvo.setRgrade(rs.getString(6));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rvo;
	}
*/
	// 영화 리뷰 삭제
	public void DelteMovieReview(ReviewVO vo) {
		getcon();

		try {
			// 쿼리 준비
			String sql = "delete from ezv_review where rno=?";
			// 쿼리 실행할 객체 선언
			pstmt = conn.prepareStatement(sql);
			// ?
			pstmt.setInt(1, vo.getRno());
			// 쿼리 실행
			pstmt.executeUpdate();
			// 자원 반납
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}



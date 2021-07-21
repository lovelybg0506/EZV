package com.ezv.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ezv.Dto.LBoardBean;

public class LBoardDAO {
	ResultSet rs; // 데이터 베이스 테이블의 결과를 리턴 받아 저장해 주는 객체
	Connection conn; // 데이터 베이스에 접근 할 수 있도록 설정
	PreparedStatement pstmt; // 데이터 베이스에서 쿼리를 실행시켜 주는 객체
	
	// 데이터 베이스의 커넥션풀을 사용하도록 설정하는 메서드
	public void getCon() {
		
		try {
				Context initctx=new InitialContext();
				Context envctx=(Context)initctx.lookup("java:comp/env");
				DataSource ds=(DataSource)envctx.lookup("jdbc/Oracle11g");
				conn=ds.getConnection();
		}catch(Exception e) {
				e.printStackTrace();
		}
	}
	
	// 하나의 새로운 게시글이 넘어와서 DB에 저장되는 메서드
	public void insertBoard(LBoardBean bean) {
		getCon();
		// 빈 클래스에 넘어오지 않았던 데이터들을 초기화 해주어야 한다
		int ref=0; // 글 그룹을 의미 = 쿼리를 실행시켜 가장 큰 ref값을 가져온 후 +1을 더해준다
		int re_step=1; // 새글이기에 = 부모 글이기에
		int re_level=1;
		
		try {
			// 가장큰 ref값을 읽어오는 쿼리 준비
			String refsql="select max(ref) from lboard";
			// 쿼리 실행 객체
			pstmt=conn.prepareStatement(refsql);
			// 쿼리를 실행 후 결과를 리턴
			rs=pstmt.executeQuery();
			
			if(rs.next()) { //결과 값이 있다면 
				ref=rs.getInt(1)+1; // 최대값에 +1을 더해서 글 그룹을 설정
			}
			// 실제로 게시글 전체값을 테이블에 저장
			String sql="insert into lboard values(lboard_seq.nextval,?,?,?,sysdate,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			
			// ?의 값을 맵핑
			pstmt.setString(1,bean.getId());
			pstmt.setString(2,bean.getPlace());
			pstmt.setString(3,bean.getSubject());
			pstmt.setInt(4, ref);
			pstmt.setInt(5, re_step);
			pstmt.setInt(6, re_level);
			pstmt.setString(7,bean.getContent());
			//쿼리를 실행
			pstmt.executeUpdate();
			//자원 반납
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//모든 게시글을 리턴해 주는 메서드  ,// 이전 이후 카운터 ,//start랑 end를 가져온다	//객체가 있는 메서드
	public Vector<LBoardBean> getAllBoard(int start,int end){ 
		
	    //public Vector<BoardBean> getAllBoard() { //객체가 없는 메서드
			
			// 리턴할 객체 선언
			Vector<LBoardBean> vec=new Vector<>();
			getCon();
			
			try {
				// 쿼리 준비
				String sql="select * from (select A.*,Rownum Rnum from(select * from lboard order by ref desc,re_step asc)A)"
				          +"where Rnum >= ? and Rnum <= ?"; 
				// 모르겠으면 이거 그대로 대입시키면 된다. 공부해보자 , Rownum은 여기서조회되는 정보에 번호를 맥인다==>자동번호를 붙인다
				// String sql="select * from board order by ref desc,re_step asc";

				// 쿼리 실행 객체
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1,start);
				pstmt.setInt(2,end); 
				// 10개 기준
				
				// 쿼리를 실행 후 결과를 저장
				rs=pstmt.executeQuery(); 
				//만들어진걸 쿼리로 실행해보고
				
				while(rs.next()) {
					LBoardBean bean=new LBoardBean();
					bean.setNum(rs.getInt(1));
					bean.setId(rs.getString(2));
					bean.setPlace(rs.getString(3));
					bean.setSubject(rs.getString(4));
					bean.setReg_date(rs.getDate(5).toString());
					bean.setRef(rs.getInt(6));
					bean.setRe_step(rs.getInt(7));
					bean.setRe_level(rs.getInt(8));
					bean.setContent(rs.getString(9));
					
					vec.add(bean); 
					//패키징한 데이터를 벡터에 저장
				}
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return vec; 
			//백터값을 리턴시킨다
		}
	
	//id를 가져와서 게시판 보여주기
	public Vector<LBoardBean> ugetAllBoard(String id,int start,int end){ 
	
    //public Vector<LBoardBean> getAllBoard() { //객체가 없는 메서드
		
		// 리턴할 객체 선언
		Vector<LBoardBean> vec=new Vector<>();
		getCon();
		
		try {
			// 쿼리 준비
			String sql="select * from (select A.*,Rownum Rnum from(select * from lboard where id= ? order by ref desc,re_step asc)A)"
			          +"where Rnum >= ? and Rnum <= ?"; 
			// 모르겠으면 이거 그대로 대입시키면 된다. 공부해보자 , Rownum은 여기서조회되는 정보에 번호를 맥인다==>자동번호를 붙인다
			// String sql="select * from board order by ref desc,re_step asc";

			// 쿼리 실행 객체
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setInt(2,start);
			pstmt.setInt(3,end); 
			// 10개 기준
			
			// 쿼리를 실행 후 결과를 저장
			rs=pstmt.executeQuery(); 
			//만들어진걸 쿼리로 실행해보고
			
			while(rs.next()) {
				LBoardBean bean=new LBoardBean();
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPlace(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setReg_date(rs.getDate(5).toString());
				bean.setRef(rs.getInt(6));
				bean.setRe_step(rs.getInt(7));
				bean.setRe_level(rs.getInt(8));
				bean.setContent(rs.getString(9));
				
				vec.add(bean); 
				//패키징한 데이터를 벡터에 저장
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return vec; 
		//백터값을 리턴시킨다
	}
	
	// BoardInfo일 때 : 하나의 게시글을 리턴하는 메서드
	public LBoardBean getOneBoard(int num) {
		// 리턴타입 선언 
		LBoardBean bean=new LBoardBean();
		getCon();
		
		try {
		
			// 쿼리 준비
			String sql="select * from lboard where num=?";
			
			// 쿼리 실행 객체
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			// 쿼리 실행 후 결과를 리턴
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPlace(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setReg_date(rs.getDate(5).toString());
				bean.setRef(rs.getInt(6));
				bean.setRe_step(rs.getInt(7));
				bean.setRe_level(rs.getInt(8));
				bean.setContent(rs.getString(9));
			}
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	// 답변글이 저장되는 메서드
	public void reWriteBoard(LBoardBean bean) {
		// 부모글 그룹과 글레벨 글스텝 읽어드림
		int ref=bean.getRef();
		int re_step=bean.getRe_step();
		int re_level=bean.getRe_level();
		
		getCon();
		
		try {
			// 핵심 코드
			// 부모글 보다 큰 re_level의 값을 전부 1씩 증가시켜줌
			String levelsql="update lboard set re_step=re_step+1 where ref=? and re_step > ?";
			// 쿼리 삽입 객체 선언
			pstmt=conn.prepareStatement(levelsql);
			pstmt.setInt(1,ref);
			//pstmt.setInt(2, re_level);
			pstmt.setInt(2, re_step);
			pstmt.executeUpdate();
			
			
			/*
			 * String insertsql="insert into lboard set id and place and subject";
			 * pstmt=conn.prepareStatement(insertsql); pstmt.setString(1, bean.getId());
			 * pstmt.setString(2, bean.getPlace()); pstmt.setString(3, bean.getSubject());
			 * 
			 * 
			 * // 쿼리 실행 pstmt.executeUpdate(); // 답변글 데이터를 저장
			 */
			
			String sql="insert into lboard values(lboard_seq.nextval,?,?,?,sysdate,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			//?에 값을 대입
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPlace());
			pstmt.setString(3, bean.getSubject());
			pstmt.setInt(4,ref); // 부모의 ref값을 넣어줌
			pstmt.setInt(5, re_step+1); // 답글이기에 부모글 re_step에 1을 넣어줌
			pstmt.setInt(6, re_level+1);
			pstmt.setString(7, bean.getContent());
			
			// 쿼리를 실행
			pstmt.executeUpdate();
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// Boardupdate용 하나의 게시글을 리턴
	// Boardupdate용 delete시 하나의 게시글을 리턴
	public LBoardBean getOneUpdateBoard(int num) {
		// 리턴타입 선언
		LBoardBean bean=new LBoardBean();
		getCon();
		
		try {
			// 쿼리 준비
			String sql="select * from lboard where num=?";
			// 쿼리 실행 객체
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			// 쿼리 실행 후 결과를 리턴
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setPlace(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setReg_date(rs.getDate(5).toString());
				bean.setRef(rs.getInt(6));
				bean.setRe_step(rs.getInt(7));
				bean.setRe_level(rs.getInt(8));
				bean.setContent(rs.getString(9));
			}
			
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	// update와 delete시 필요한 패스워드 값을 리턴해 주는 메서드
	public String getPass(int num) {
		// 리턴할 변수 객체 선언
		String pass="";
		getCon();
		
		try {
			// 쿼리 준비
			String sql="select password from lboard where num=?";
			// 쿼리 실행할 객체 선언
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,num);
			// 쿼리 실행후 결과를 리턴
			rs=pstmt.executeQuery();
			// 패스워드 값을 저장
			if(rs.next()) {
				pass=rs.getString(1);
			}
			// rs.getString() - getString함수는 해당 순서의 열에 있는 데이터를 String형으로 받아온다
			// 예를 들어 rs.getString(2)를 하게되면 2번째 열에 있는 데이터를 가져오게 된다.
			
			// 자원 반납
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return pass;
	}
	
	// 하나의 게시글을 수정하는 메서드
	public void updateBoard(LBoardBean bean) {
		getCon();
		
		try {
			// 쿼리 준비
			String sql="update lboard set content=? where num=?";
			
			// 쿼리 실행할 객체 선언
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1,bean.getContent());
			pstmt.setInt(2,bean.getNum());
			
			// 쿼리 실행후 결과를 리턴
			pstmt.executeUpdate();
			
			// 자원 반납
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	// 하나의 게시글을 삭제하는 메서드
	public void deleteBoard(int num) {
		getCon();
		
		try {
			// 쿼리 준비
			String sql="delete from lboard where num=?";
			// 쿼리 실행할 객체 선언
			pstmt=conn.prepareStatement(sql);
			// ?
			pstmt.setInt(1, num);
			// 쿼리 실행
			pstmt.executeUpdate();
			//자원 반납
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	//전체 글의 갯수를 리턴하는 메서드
		public int getAllCount() {
			getCon();
			// 게시글 전체수를 저장하는 변수
			int count=0;
			
			try {
				// 쿼리 준비
				String sql="select count(*) from lboard";
				// 쿼리 실행할 객체 선언
				pstmt=conn.prepareStatement(sql);
				// 쿼리 실행후 결과 리턴
				rs=pstmt.executeQuery();
				if(rs.next()) {
					count=rs.getInt(1);
				}
				// 자원 반납
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return count;
		}
	
	//회원아이디를 불러와서 그 회원이 쓴것만 보여준다
	public int ugetAllCount(String id) {
		getCon();
		// 게시글 전체수를 저장하는 변수
		int count=0;
		
		try {
			// 쿼리 준비
			String sql="select count(*) from lboard where id=?";
			// 쿼리 실행할 객체 선언
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			// 쿼리 실행후 결과 리턴
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
			// 자원 반납
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	

}










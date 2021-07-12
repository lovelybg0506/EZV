package com.ezv.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ezv.Dto.SBoardBean;

public class SBoardDAO {
	ResultSet rs; 
	Connection conn; 
	PreparedStatement pstmt; 
	
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
	
	public void insertBoard(SBoardBean bean) {
		getCon();
		
		int ref=0; 
		int re_step=1; 
		int re_level=1;
				
		try {
			String refsql="select max(ref) from sboard";
			
			pstmt=conn.prepareStatement(refsql);
			rs=pstmt.executeQuery();
			if(rs.next()) { 
				ref=rs.getInt(1)+1; 
			}
		
			String sql="insert into sboard values(sboard_seq.nextval,?,?,?,sysdate,?,?,?,?)"; 
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getPlace());
			pstmt.setString(2, bean.getType());
			pstmt.setString(3, bean.getSubject());
			pstmt.setInt(4, ref);
			pstmt.setInt(5, re_step);
			pstmt.setInt(6, re_level);
			pstmt.setString(7, bean.getContent());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}

	public void close() {
		try {
			if(conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public Vector<SBoardBean> getAllBoard(int start,int end){ 
		Vector<SBoardBean> v=new Vector<>();
		getCon();
		
		try {
			String sql="select * from (select A.*,Rownum Rnum from(select * from sboard order by ref desc,re_step asc)A)"
					+"where Rnum >=? and Rnum <= ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end); 
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				SBoardBean bean=new SBoardBean();
				bean.setNum(rs.getInt(1));
				bean.setPlace(rs.getString(2));
				bean.setType(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setReg_date(rs.getDate(5).toString());
				bean.setRef(rs.getInt(6));
				bean.setRe_step(rs.getInt(7));
				bean.setRe_level(rs.getInt(8));
				bean.setContent(rs.getString(9));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	
	public SBoardBean getOneBoard(int num) {
		
		SBoardBean bean=new SBoardBean();
		getCon();
		
		try {
			String sql="select * from sboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
            rs=pstmt.executeQuery();
            
            if(rs.next()) {
               bean.setNum(rs.getInt(1));
               bean.setPlace(rs.getString(2));
               bean.setType(rs.getString(3));
               bean.setSubject(rs.getString(4));
               bean.setReg_date(rs.getDate(5).toString());
               bean.setRef(rs.getInt(6));
               bean.setRe_step(rs.getInt(7));
               bean.setRe_level(rs.getInt(8));
               bean.setContent(rs.getString(9));
            }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return bean;
	}
	
	
	public void reWriteBoard(SBoardBean bean) {
		
		int ref=bean.getRef();
		int re_step=bean.getRe_step();
		int re_level=bean.getRe_level();
		
		getCon();
		
		try {
			String levelsql="update sboard set re_level=re_level+1 where ref=? and re_level > ?";

			pstmt=conn.prepareStatement(levelsql);
			pstmt.setInt(1, ref);
			pstmt.setInt(2, re_level);
			
			pstmt.executeUpdate();
			
			String sql="insert into sboard values(sboard_seq.nextval,?,?,?,sysdate,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getPlace());
			pstmt.setString(2, bean.getType());
			pstmt.setString(3, bean.getSubject());
			pstmt.setInt(4, ref); // 부모의 ref값을 넣어줌
			pstmt.setInt(5, re_step+1); // 답글이기에 부모글 re_step에 1을 넣어줌
			pstmt.setInt(6, re_level+1);
			pstmt.setString(7, bean.getContent());
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public SBoardBean getOneUpdateBoard(int num) {
		
		SBoardBean bean=new SBoardBean();
		getCon();
		
		try {
			String sql="select * from sboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
               bean.setNum(rs.getInt(1));
               bean.setPlace(rs.getString(2));
               bean.setType(rs.getString(3));
               bean.setSubject(rs.getString(4));
               bean.setReg_date(rs.getDate(5).toString());
               bean.setRef(rs.getInt(6));
               bean.setRe_step(rs.getInt(7));
               bean.setRe_level(rs.getInt(8));
               bean.setContent(rs.getString(9));
            }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return bean;
	}
	
	public String getPass(int num) {
		
		String pass="";
		getCon();
		
		try {
			String sql="select password from sboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				pass=rs.getString(1);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return pass;
	}
	
	public void updateBoard(SBoardBean bean) {
		getCon();
        
        try {
           String sql="update sboard set subject=?,content=? where num=?";
           
           pstmt=conn.prepareStatement(sql);
           
           pstmt.setString(1, bean.getSubject());
           pstmt.setString(2, bean.getContent());
           pstmt.setInt(3, bean.getNum());
           
           pstmt.executeUpdate(); 
           
        }catch(Exception e) {
           e.printStackTrace();
        }finally {
			close();
		}
	}
	
	public void deleteBoard(int num) {
		getCon();
		
		try {
			String sql="delete from sboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	public int getAllCount() {
		getCon();
		int count=0;
		
		try {
			String sql="select count(*) from sboard";
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			if(rs.next()) {
				count=rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return count;
	}
	
	public int getnNum(int num) {
		getCon();
		int nNum=0;
		
		try {
			String sql="select min(num) from (select * from sboard where num > ?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				nNum=rs.getInt(1);
			}
		}catch(Exception e) {
	           e.printStackTrace();
	        }finally {
				close();
			}
		return nNum;
	}
	
	public int getbNum(int num) {
		getCon();
		int bNum=0;
		
		try {
			String sql="select max(num) from (select * from sboard where num < ?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bNum=rs.getInt(1);
			}
		}catch(Exception e) {
	           e.printStackTrace();
	        }finally {
				close();
			}
		return bNum;
	}
	
	public int getSearchCount(String sc) {
		getCon();
		int count=0;
		
		try {
			String sql="select count(*) from (select * from sboard where content like ? or subject like ?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, '%' + sc + '%');
			pstmt.setString(2, '%' + sc + '%');
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				count=rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return count;
	}
	
	public Vector<SBoardBean> getSearchBoard(String sc,int start,int end){ 
		Vector<SBoardBean> v=new Vector<>();
		getCon();
		
		try {
			String like = '%' + sc + '%';
			String sql="select * from (select A.*,Rownum Rnum from(select * from sboard where content like ? or subject like ?)A)"
					+"where Rnum >=? and Rnum <=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, like);
			pstmt.setString(2, like);
			pstmt.setInt(3, start);
			pstmt.setInt(4, end);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				SBoardBean bean=new SBoardBean();
				bean.setNum(rs.getInt(1));
				bean.setPlace(rs.getString(2));
				bean.setType(rs.getString(3));
				bean.setSubject(rs.getString(4));
				bean.setReg_date(rs.getDate(5).toString());
				bean.setRef(rs.getInt(6));
				bean.setRe_step(rs.getInt(7));
				bean.setRe_level(rs.getInt(8));
				bean.setContent(rs.getString(9));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return v;
	}
}

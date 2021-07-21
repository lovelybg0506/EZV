package com.ezv.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ezv.Dto.EBoardBean;



public class EBoardDAO {
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
	
	public void insertBoard(String fileName,String fileRealName,String title,String subtitle,String Term,String content) {
		getCon();
				
		try {
			String sql="insert into eboard values(eboard_seq.nextval,?,?,?,?,?,?)"; 
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, fileName);
			pstmt.setString(2, fileRealName);
			pstmt.setString(3, title);
			pstmt.setString(4, subtitle);
			pstmt.setString(5, Term);
			pstmt.setString(6, content);
			
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
	
	
	public Vector<EBoardBean> getAllBoard(int start,int end){ 
		Vector<EBoardBean> v=new Vector<>();
		getCon();
		
		try {
			String sql="select * from (select A.*,Rownum Rnum from(select * from eboard order by num)A)"
					+"where Rnum >=? and Rnum <= ?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end); 
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				EBoardBean bean=new EBoardBean();
				bean.setNum(rs.getInt(1));
				bean.setFileName(rs.getString(2));
				bean.setFileRealName(rs.getString(3));
				bean.setTitle(rs.getString(4));
				bean.setSubtitle(rs.getString(5));
				bean.setTerm(rs.getString(6));
				bean.setContent(rs.getString(7));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	
	public EBoardBean getOneBoard(int num) {
		
		EBoardBean bean=new EBoardBean();
		getCon();
		
		try {
			String sql="select * from eboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
            rs=pstmt.executeQuery();
            
            if(rs.next()) {
            	bean.setNum(rs.getInt(1));
				bean.setFileName(rs.getString(2));
				bean.setFileRealName(rs.getString(3));
				bean.setTitle(rs.getString(4));
				bean.setSubtitle(rs.getString(5));
				bean.setTerm(rs.getString(6));
				bean.setContent(rs.getString(7));
            }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return bean;
	}
	
	
	public EBoardBean getOneUpdateBoard(int num) {
		
		EBoardBean bean=new EBoardBean();
		getCon();
		
		try {
			String sql="select * from eboard where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setFileName(rs.getString(2));
				bean.setFileRealName(rs.getString(3));
				bean.setTitle(rs.getString(4));
				bean.setSubtitle(rs.getString(5));
				bean.setTerm(rs.getString(6));
				bean.setContent(rs.getString(7));
            }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return bean;
	}
	
	
	public void updateBoard(String title,String subtitle,String term,String content,int num) {
		getCon();
        
        try {
           String sql="update eboard set title=?,subtitle=?,term=?,content=? where num=?";
           
           pstmt=conn.prepareStatement(sql);
           
           pstmt.setString(1, title);
           pstmt.setString(2, subtitle);
           pstmt.setString(3, term);
           pstmt.setString(4, content);
           pstmt.setInt(5,num);
           
           pstmt.executeUpdate(); 
           
        }catch(Exception e) {
           e.printStackTrace();
        }finally {
			close();
		}
	}
	
	public void fileUpdateBoard(String fileName,String fileRealName,String title,String subtitle,String term,String content,int num) {
		getCon();
        
        try {
           String sql="update eboard set fileName=?,fileRealName=?,title=?,subtitle=?,term=?,content=? where num=?";
           
           pstmt=conn.prepareStatement(sql);
           
           pstmt.setString(1, fileName);
           pstmt.setString(2, fileRealName);
           pstmt.setString(3, title);
           pstmt.setString(4, subtitle);
           pstmt.setString(5, term);
           pstmt.setString(6, content);
           pstmt.setInt(7, num);
           
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
			String sql="delete from eboard where num=?";
			
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
			String sql="select count(*) from eboard";
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
}

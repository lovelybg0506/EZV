package com.ezv.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import com.ezv.Dto.MovieVO;


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


	public Vector<MovieVO> Movie(){
		
		Vector<MovieVO> v=new Vector<MovieVO>();
		
		try {
			getcon();
			String sql="select * from ezv_movie";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				MovieVO mbean=new MovieVO();
				mbean.setMno(rs.getInt(1));
				mbean.setMname(rs.getString(2));
				mbean.setMcontent(rs.getString(3));
				mbean.setMdirector(rs.getString(4));
				mbean.setMactor(rs.getString(5));
				mbean.setMgenre(rs.getString(6));
				mbean.setMdate(rs.getString(7));
				mbean.setMgrade(rs.getString(8));
				mbean.setMimg(rs.getString(9));
				mbean.setMfilesize(rs.getString(10));
				v.add(mbean);
			}
			
			conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return v;
	}
}
package com.ezv.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ezv.Dto.ReservationBean;
import com.ezv.Dto.SBoardBean;

public class ReservationDAO {
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
	
	// 영화 예약 저장
	public void insertBoard(ReservationBean bean) {
		getCon();
		
				
		try {
			String sql="insert into reservation values(reserve_seq.nextval,?,?,?,?,?,?,?,?,?)"; 
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setInt(1, bean.getMno());
			pstmt.setString(2, bean.getId());
			pstmt.setString(3, bean.getArea());
			pstmt.setString(4, bean.getPlace());
			pstmt.setString(5, bean.getRsdate());
			pstmt.setString(6, bean.getRstime());
			pstmt.setString(7, bean.getSeat());
			pstmt.setInt(8, bean.getInwon());
			pstmt.setInt(9, bean.getPrice());			
			
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
	
	
	// 내 예약 가져오기
	public ReservationBean getMyBoard(String id){ 
		getCon();
		ReservationBean bean=new ReservationBean();
		
		try {
			String sql="select * from reservation where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				bean.setNum(rs.getInt(1));
				bean.setMno(rs.getInt(2));
				bean.setId(rs.getString(3));
				bean.setArea(rs.getString(4));
				bean.setPlace(rs.getString(5));
				bean.setRsdate(rs.getString(6));
				bean.setRstime(rs.getString(7));
				bean.setSeat(rs.getString(8));
				bean.setInwon(rs.getInt(9));
				bean.setPrice(rs.getInt(10));
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	
	
	
	
	// 예약 업데이트
	public void updateBoard(ReservationBean bean) {
		getCon();
        
        try {
           String sql="update reservation set mno=?,area=?,place=?,rsdate=?,rstime=? where id=?";
           
           pstmt=conn.prepareStatement(sql);
           
           
           pstmt.setInt(1, bean.getMno());
           pstmt.setString(2, bean.getArea());
           pstmt.setString(3, bean.getPlace());
           pstmt.setString(4, bean.getRsdate());
           pstmt.setString(5, bean.getRstime());
           
           pstmt.setString(6, bean.getId());
           
           pstmt.executeUpdate(); 
           
        }catch(Exception e) {
           e.printStackTrace();
        }finally {
			close();
		}
	}
	
	// 예약 삭제
	public void deleteBoard(int num) {
		getCon();
		
		try {
			String sql="delete reservation where num=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	// 전체 예약 수
	public int getAllCount() {
		getCon();
		int count=0;
		
		try {
			String sql="select count(*) from reservation";
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
	
	
	// 전체 예약 가져오기
	public Vector<ReservationBean> getAllBoard(){ 
		Vector<ReservationBean> v=new Vector<>();
		getCon();
		
		try {
			String sql="select * from reservation";
			pstmt=conn.prepareStatement(sql);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				ReservationBean bean=new ReservationBean();
				bean.setMno(rs.getInt(1));
				bean.setId(rs.getString(2));
				bean.setArea(rs.getString(3));
				bean.setPlace(rs.getString(4));
				bean.setRsdate(rs.getString(5));
				bean.setRstime(rs.getString(6));
				bean.setSeat(rs.getString(7));
				bean.setInwon(rs.getInt(8));
				bean.setPrice(rs.getInt(9));
				
				v.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
	// 영화의 seat list 가져오기
	public ArrayList<String> getList(int mno){
		String sql="select seat from reservation where mno=?";
		getCon();
		ArrayList<String> list = new ArrayList<String>();
		String[] seat;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				
				seat=rs.getString(1).split(",");
				ArrayList<String> arrayList = new ArrayList<>(Arrays.asList(seat));
				list.addAll(arrayList);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	// mno로 mname불러오기
	public String getMovieName(int mno) {
		
		
		getCon();
		String mname=null;
		try {
			String sql="select mname from ezv_movie where mno=?";
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			
            rs=pstmt.executeQuery();
            
            if(rs.next()) {
            	mname=rs.getString(1);
            }
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return mname;
	}
}

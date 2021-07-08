package com.ezv.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.ezv.Dto.MemberVO;

public class MemberDAO {
	
	private MemberDAO() {

	}

	private static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {

		return instance;
	}

	Connection getConnection() {
		Connection conn = null;
		Context initContext;

		try {
			initContext = new InitialContext();
			DataSource ds = (DataSource) initContext.lookup("java:/comp/env/jdbc/Oracle11g");
			conn = ds.getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return conn;
	}
	
	public int userCheck(String id, String pwd1, String admin) {
		int result = 1;
		Connection conn = null;
		String sql = "select * from ezv_member where id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				// 비밀번호가 일치하고
				if (pwd1.equals(rs.getString("pwd1"))) {
					// 회원 등급이 일치하면
					if (admin.contentEquals(rs.getString("admin"))) {
						result = 2; // 관리자로 로그인 성공
						if (admin.equals("B")) {
							result = 3; // 일반 회원으로 로그인 성공
						}
					} else { // 레벨 불일치 로그인 실패
						result = 1;
					}
				} else {// 비밀번호 불일치 로그인 실패
					result = 0;
				}
			}else {// 아이디가 불일치 로그인 실패
				result = -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return result;
	}
	
	//회원 가져오기
	public MemberVO getMember(String id) {
		MemberVO member = null;
		Connection conn = null;
		String sql = "select * from ezv_member where id = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				member = new MemberVO();
				member.setId(rs.getString("id"));
				member.setPwd1(rs.getString("pwd1"));
				member.setName(rs.getString("name"));
				member.setAge(rs.getInt("age"));
				member.setGender(rs.getString("gender"));
				member.setTel1(rs.getString("tel1"));
				member.setTel2(rs.getString("tel2"));
				member.setTel3(rs.getString("tel3"));
				member.setEmail(rs.getString("email"));
				member.setAdmin(rs.getString("admin"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return member;
	}
	
	public int insertMember(MemberVO member) {
		int result = -1;
		String sql = "insert into ezv_member values(?,?,?,?,?,?,?,?,?,?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd1());
			pstmt.setString(3, member.getName());
			pstmt.setInt(4, member.getAge());
			pstmt.setString(5, member.getGender());
			pstmt.setString(6, member.getTel1());
			pstmt.setString(7, member.getTel2());
			pstmt.setString(8, member.getTel3());
			pstmt.setString(9, member.getEmail());
			pstmt.setString(10, member.getAdmin());
			
			result=pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int updateMember(MemberVO mvo) {
		int result = -1;
		String sql = "update ezv_member set gender=?,pwd1=?,name=?,admin=?,tel1=?,tel2=?,tel3=? where id = ?";
		Connection conn=null;
		PreparedStatement pstmt = null;
		
		try {
			conn=getConnection();
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, mvo.getGender());
			pstmt.setString(2, mvo.getPwd1());
			pstmt.setString(3, mvo.getName());
			pstmt.setString(4, mvo.getAdmin());
			pstmt.setString(5, mvo.getTel1());			
			pstmt.setString(6, mvo.getTel2());			
			pstmt.setString(7, mvo.getTel3());			
			pstmt.setString(8, mvo.getId());	
		
			result=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt != null)
					pstmt.close();
				if(conn != null)
					conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}

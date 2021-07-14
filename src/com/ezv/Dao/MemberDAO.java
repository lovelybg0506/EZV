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

			if (rs.next()) {
				// 비밀번호가 일치하고
				if (pwd1.equals(rs.getString("pwd1"))) {
					// 회원 등급이 일치하면
					if (admin == null) {
						if (rs.getString("admin").equals("A")) {
							result = 2; // 관리자
						} else {
							result = 3; // 일반
						}
					}
				} else {// 비밀번호 불일치 로그인 실패
					result = 0;
				}
			} else {// 아이디가 불일치 로그인 실패
				result = -1;
			}
		} catch (Exception e) {
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

	// 회원 가져오기
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
				member.setId(rs.getString(1));
				member.setPwd1(rs.getString(2));
				member.setName(rs.getString(3));
				member.setAge(rs.getInt(4));
				member.setGender(rs.getString(5));
				member.setTel1(rs.getString(6));
				member.setTel2(rs.getString(7));
				member.setTel3(rs.getString(8));
				member.setEmail(rs.getString(9));
				member.setAdmin(rs.getString(10));
			}
		} catch (Exception e) {
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
		String sql = "insert into ezv_member values(?,?,?,?,?,?,?,?,?,default)";
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
			// pstmt.setString(10, member.getAdmin());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
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

	public void updateMember(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt= null;
		String sql = "update EZV_member set name=?,age=?,gender=?,tel1=?,tel2=?,tel3=?,email=? where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mvo.getName());
			pstmt.setInt(2, mvo.getAge());
			pstmt.setString(3, mvo.getGender());
			pstmt.setString(4, mvo.getTel1());
			pstmt.setString(5, mvo.getTel2());
			pstmt.setString(6, mvo.getTel3());
			pstmt.setString(7, mvo.getEmail());
			pstmt.setString(8, mvo.getId());
//			pstmt.setString(9, mvo.getPwd1());
			
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	public MemberVO oneSelectMember(String id) {
		MemberVO m = new MemberVO();
		Connection conn = null;
		String sql = "select * from ezv_member where id=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				m.setId(rs.getString(1));
				m.setPwd1(rs.getString(2));
				m.setName(rs.getString(3));
				m.setAge(rs.getInt(4));
				m.setGender(rs.getString(5));
				m.setTel1(rs.getString(6));
				m.setTel2(rs.getString(7));
				m.setTel3(rs.getString(8));
				m.setEmail(rs.getString(9));
			}

			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return m;
	}

	public String getPass1(String id) {
		String pass = "";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			String sql = "select pwd1 from ezv_member where id=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pass = rs.getString(1);
			}

			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return pass;
	}

	public int deleteMember(String id, String pwd1) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql1 = "select pwd1 from EZV_member where id=?";
		String sql2 = "delete from EZV_member where id=?";

		String pwd = "";
		int x = -1;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql1);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				pwd = rs.getString("pwd1");
				if (pwd.contentEquals(pwd1)) {
					pstmt = conn.prepareStatement(sql2);
					pstmt.setString(1, id);
					pstmt.executeUpdate();
					x = 1;
				} else
					x = 0;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	
	public boolean checkId(String id) {
		boolean check = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select id from EZV_member where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			check = rs.next();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return check;
	}
	
	public void changePw(MemberVO mvo) {
		Connection conn = null;
		PreparedStatement pstmt= null;
		String sql = "update EZV_member set pwd1=? where id=?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mvo.getPwd1());
			pstmt.setString(2, mvo.getId());
//					
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
		
}













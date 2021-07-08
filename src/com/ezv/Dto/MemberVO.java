package com.ezv.Dto;

public class MemberVO {
	private String id; // 아이디
	private String pwd1; // 패스워드
	private String pwd2; // 패스워드 확인
	private String name; // 이름
	private int age;
	private String gender; // 성별
	private String tel1; // 전화번호1
	private String tel2; // 전화번호2
	private String tel3; // 전화번호3
	private String email; // 이메일
	private String admin;// 권한
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTel1() {
		return tel1;
	}
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	
	@Override
	public String toString() {
		return "\n MemberVO[id="+id+", pwd1="+pwd1+", pwd2="+pwd2+", name="+name
				+", age="+age+", gender="+gender+", tel1="+tel1+", tel2="+tel2+", tel3="+tel3+", email="+email+","
						+ " admin="+admin+"]";
	}
}

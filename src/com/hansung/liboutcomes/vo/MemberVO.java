package com.hansung.liboutcomes.vo;

/*
 * 회원 정보
 */
public class MemberVO {
	
	private int id;
	private String email;
	private String password;
	private String name;
	private String library;
	
	public MemberVO() {}
	
	public MemberVO(int id, String email, String password, String name, String library) {
		this.id = id;
		this.email = email;
		this.password = password;
		this.name = name;
		this.library = library;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLibrary() {
		return library;
	}
	public void setLibrary(String library) {
		this.library = library;
	}
		
}

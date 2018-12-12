package com.smxy.bean;

public class User {
	
	private int uid;
	private String username;
	private String password;
	private String email;
	private int userRoot;
	
	
	
	public int getUserRoot() {
		return userRoot;
	}
	public void setUserRoot(int userRoot) {
		this.userRoot = userRoot;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public User(int uid, String username, String password, String email) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.email = email;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", userRoot=" + userRoot + "]";
	}
	
}

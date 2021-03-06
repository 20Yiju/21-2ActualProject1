package com.member.bean;

import java.util.Date;

public class MemberVO {
/*
 * sid int AUTO_INCREMENT,
 * userid varchar(20),
 * username varchar(40),
 * password varchar(40),
 * email varchar(60),
 * blogurl varchar(30),
 * photo varchar(30),
 * detail varchar(1000),
 * regdate timestamp default CURRENT_TIMESTAMP,
        
        
);*/
	private int sid;
	private String userid;
	private String username;
	private String password;
	private String email;
	private String blogurl;
	private String photo;
	private String detail;
	private Date regdate;
	
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getBlogurl() {
		return blogurl;
	}
	public void setBlogurl(String blogurl) {
		this.blogurl = blogurl;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String deetail) {
		this.detail = deetail;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	

}

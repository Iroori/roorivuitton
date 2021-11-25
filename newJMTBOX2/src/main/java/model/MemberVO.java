package model;

import java.util.Date;

public class MemberVO {

	private String id;
	private String pw;
	private String nick;
	private Date joinDate;
	
	
	public MemberVO() {
		
	}
	
	public MemberVO(String id, String pw, String nick, Date date) {
		
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.joinDate = date;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public Date getDate() {
		return joinDate;
	}
	public void setDate(Date date) {
		this.joinDate = date;
	}
	
}

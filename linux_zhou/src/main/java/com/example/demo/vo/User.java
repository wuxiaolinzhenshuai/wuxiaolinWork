package com.example.demo.vo;

public class User {
	
	private Integer uid;
	private String uname;
	private String upassword;
	private Integer cid;
	private String cname;
	private String cbie;
	private String czuozhe;
	private String cying;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCbie() {
		return cbie;
	}
	public void setCbie(String cbie) {
		this.cbie = cbie;
	}
	public String getCzuozhe() {
		return czuozhe;
	}
	public void setCzuozhe(String czuozhe) {
		this.czuozhe = czuozhe;
	}
	public String getCying() {
		return cying;
	}
	public void setCying(String cying) {
		this.cying = cying;
	}
	public User(Integer uid, String uname, String upassword, Integer cid, String cname, String cbie, String czuozhe,
			String cying) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upassword = upassword;
		this.cid = cid;
		this.cname = cname;
		this.cbie = cbie;
		this.czuozhe = czuozhe;
		this.cying = cying;
	}
	public User() {
		super();
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", cid=" + cid + ", cname="
				+ cname + ", cbie=" + cbie + ", czuozhe=" + czuozhe + ", cying=" + cying + "]";
	}
	
	
}

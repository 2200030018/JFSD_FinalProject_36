package com.klef.jfsd.springbootproject.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Community {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long cid;
	
	@Column(name = "student_id",nullable = false)
	long sid;
	
	@Column(name = "studnet_username",nullable = false, length = 50)
	String susername;
	
	@Column(name = "message", length = 350, nullable = false)
	private String cmsg;

	public long getCid() {
		return cid;
	}

	public void setCid(long cid) {
		this.cid = cid;
	}

	public long getSid() {
		return sid;
	}

	public void setSid(long sid) {
		this.sid = sid;
	}

	public String getCmsg() {
		return cmsg;
	}

	public void setCmsg(String cmsg) {
		this.cmsg = cmsg;
	}

	public String getSusername() {
		return susername;
	}

	public void setSusername(String susername) {
		this.susername = susername;
	}
	
	
	

}

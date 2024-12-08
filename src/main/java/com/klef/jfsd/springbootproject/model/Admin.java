package com.klef.jfsd.springbootproject.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Admin {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="admin_id", nullable = false)
	private long aid;
	
	@Column(name = "admin_name", nullable = false, length = 50)
	private String aname;
	
	@Column(name = "admin_username", nullable = false, length = 50)
	private String ausername;
	
	@Column(name = "admin_email", nullable = false, length = 50)
	private String aemail;
	
	@Column(name = "admin_password", nullable = false, length = 50)
	private String apassword;
	
	@Column(name="admin_contact", nullable = false, length = 20)
	private String acontact;
	
	@Column(name = "admin_image")
	private Blob aimage;
	public long getAid() {
		return aid;
	}
	public void setAid(long aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAusername() {
		return ausername;
	}
	public void setAusername(String ausername) {
		this.ausername = ausername;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String getAcontact() {
		return acontact;
	}
	public void setAcontact(String acontact) {
		this.acontact = acontact;
	}
	public Blob getAimage() {
		return aimage;
	}
	public void setAimage(Blob aimage) {
		this.aimage = aimage;
	}
	
	

}

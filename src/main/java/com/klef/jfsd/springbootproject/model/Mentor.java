package com.klef.jfsd.springbootproject.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name = "Mentor")
public class Mentor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "mentor_id")
	private long mid;
	
	@Column(name = "mentor_name", nullable = false, length = 50)
	private String mname;
	
	@Column(name = "mentor_gender", nullable = false, length = 30)
	private String mgender;
	
	@Column(name = "mentor_dob", nullable = false, length = 20)
	private String mdateofbirth;
	
	@Column(name = "mentor_location", nullable = false, length = 50)
	private String mloacation;
	
	@Column(name = "mentor_email", nullable = false,unique = true, length = 50)
	private String memail;
	
	@Column(name = "mentor_password", nullable = false, length = 50)
	private String mpassword;
	
	@Column(name = "mentor_contact", nullable = false,unique = true, length = 50)
	private String mcontact;
	
	@Column(name = "mentor_username", nullable = false,unique = true, length = 50)
	private String musername;
	
	@Column(name = "mentor_about", nullable = false, length = 300)
	private String mabout;
	
	@Lob
	@Column(name = "mentor_image")
	private Blob mimage;
	
	@Column(name = "mentor_status",length = 50)
	private String mstatus;

	public long getMid() {
		return mid;
	}

	public void setMid(long mid) {
		this.mid = mid;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMgender() {
		return mgender;
	}

	public void setMgender(String mgender) {
		this.mgender = mgender;
	}

	public String getMdateofbirth() {
		return mdateofbirth;
	}

	public void setMdateofbirth(String mdateofbirth) {
		this.mdateofbirth = mdateofbirth;
	}

	public String getMloacation() {
		return mloacation;
	}

	public void setMloacation(String mloacation) {
		this.mloacation = mloacation;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMpassword() {
		return mpassword;
	}

	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getMcontact() {
		return mcontact;
	}

	public void setMcontact(String mcontact) {
		this.mcontact = mcontact;
	}

	public String getMusername() {
		return musername;
	}

	public void setMusername(String musername) {
		this.musername = musername;
	}

	public String getMabout() {
		return mabout;
	}

	public void setMabout(String mabout) {
		this.mabout = mabout;
	}

	public Blob getMimage() {
		return mimage;
	}

	public void setMimage(Blob mimage) {
		this.mimage = mimage;
	}

	public String getMstatus() {
		return mstatus;
	}

	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}
	
	

}

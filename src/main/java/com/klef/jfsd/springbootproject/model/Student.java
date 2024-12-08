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
@Table(name = "Student")
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "student_id")
	private long sid;
	
	@Column(name = "student_name", nullable = false, length = 50)
	private String sname;
	
	@Column(name = "student_gender", nullable = false, length=10)
	private String sgender;
	
	@Column(name = "student_dob", nullable = false, length = 20 )
	private String sdateofbirth;
	
	@Column(name = "student_location", nullable = false, length = 50)
	private String slocation;
	
	@Column(name = "student_email", nullable = false,unique = true, length = 50)
	private String semail;
	
	@Column(name = "student_password", nullable = false, length = 50)
	private String spassword;
	
	@Column(name = "student_contact", nullable = false,unique = true, length = 15)
	private String scontact;
	
	@Column(name = "student_username", nullable = false,unique = true, length = 30)
	private String susername;
	
	@Column(name = "student_college", length = 50)
	private String scollege;
	
	@Column(name = "student_about", length = 300)
	private String sabout;
	
	@Column(name= "mentor_id" , nullable = true)
	private long mid=-1;
	
	
	@Lob
	@Column(name = "student_image")
	private Blob simage;

	public long getSid() {
		return sid;
	}

	public void setSid(long sid) {
		this.sid = sid;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSgender() {
		return sgender;
	}

	public void setSgender(String sgender) {
		this.sgender = sgender;
	}

	public String getSdateofbirth() {
		return sdateofbirth;
	}

	public void setSdateofbirth(String sdateofbirth) {
		this.sdateofbirth = sdateofbirth;
	}

	public String getSlocation() {
		return slocation;
	}

	public void setSlocation(String slocation) {
		this.slocation = slocation;
	}

	public String getSemail() {
		return semail;
	}

	public void setSemail(String semail) {
		this.semail = semail;
	}

	public String getSpassword() {
		return spassword;
	}

	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}

	public String getScontact() {
		return scontact;
	}

	public void setScontact(String scontact) {
		this.scontact = scontact;
	}

	public String getSusername() {
		return susername;
	}

	public void setSusername(String susername) {
		this.susername = susername;
	}

	public String getScollege() {
		return scollege;
	}

	public void setScollege(String scollege) {
		this.scollege = scollege;
	}

	public String getSabout() {
		return sabout;
	}

	public void setSabout(String sabout) {
		this.sabout = sabout;
	}
	
	

	public long getMid() {
		return mid;
	}

	public void setMid(long mid) {
		this.mid = mid;
	}

	public Blob getSimage() {
		return simage;
	}

	public void setSimage(Blob simage) {
		this.simage = simage;
	}
	
	
	
	

}

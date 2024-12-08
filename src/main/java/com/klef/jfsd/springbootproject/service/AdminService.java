package com.klef.jfsd.springbootproject.service;

import java.util.List;

import com.klef.jfsd.springbootproject.model.Admin;
import com.klef.jfsd.springbootproject.model.Mentor;

public interface AdminService {
	public Admin checkAdminLoginByUsername(String ausername,String apassword);
	public Admin checkAdminLoginByEmail(String aemail,String apassword);
	public List<Mentor> viewAllMentors();
	public String adminupdate(Admin a);

}

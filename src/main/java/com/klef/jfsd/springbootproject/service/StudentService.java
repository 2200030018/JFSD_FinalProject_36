package com.klef.jfsd.springbootproject.service;

import java.util.List;

import com.klef.jfsd.springbootproject.model.Community;
import com.klef.jfsd.springbootproject.model.Student;

public interface StudentService {
	public String studentRegistration(Student s);
	public Student checkStudentLoginByUsername(String susername,String spassword);
	public Student checkStudentLoginByEmail(String semail,String spassword);
	public String studentUpdate(Student s);
	public Student viewStudentById(long id);
	public List<Community> viewCommunity();
	public String addCommunityMessage(Community c);
}

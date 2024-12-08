package com.klef.jfsd.springbootproject.service;

import java.util.List;

import com.klef.jfsd.springbootproject.model.Mentor;
import com.klef.jfsd.springbootproject.model.Student;

public interface MentorService {
	public String mentorRegistration(Mentor m);
	public Mentor checkMentorLoginByUsername(String musername,String mpassword);
	public Mentor checkMentorLoginByEmail(String memail,String mpassword);
	public String mentorUpdate(Mentor m);
	public List<Student> viewAllStudents();

}

package com.klef.jfsd.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springbootproject.model.Admin;
import com.klef.jfsd.springbootproject.model.Mentor;
import com.klef.jfsd.springbootproject.repository.AdminRepository;
import com.klef.jfsd.springbootproject.repository.MentorRepository;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private MentorRepository mentorRepository;

	@Override
	public Admin checkAdminLoginByUsername(String ausername, String apassword) {
		return adminRepository.checkAdminLoginByUsername(ausername, apassword);
	}

	@Override
	public Admin checkAdminLoginByEmail(String aemail, String apassword) {
		return adminRepository.checkAdminLoginByEmail(aemail, apassword);
	}

	@Override
	public List<Mentor> viewAllMentors() {
		return mentorRepository.findAll();
	}

	@Override
	 public String adminupdate(Admin a) {
	  Optional<Admin> object=adminRepository.findById(a.getAid());
	  String msg=null;
	  if(object.isPresent()) {
	   Admin ad=object.get();
	   ad.setAname(a.getAname());
	   ad.setAcontact(a.getAcontact());
	   ad.setAemail(a.getAemail());
	   ad.setApassword(a.getApassword());
	   ad.setAusername(a.getAusername());
	   ad.setAimage(a.getAimage());
	   adminRepository.save(ad);
	   msg="admin Updated Successfully";
	  }else {
	   msg="admin not found";
	  }
	  return msg;
	 }

}

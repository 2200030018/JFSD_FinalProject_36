package com.klef.jfsd.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springbootproject.model.Community;
import com.klef.jfsd.springbootproject.model.Student;
import com.klef.jfsd.springbootproject.repository.CommunityRepository;
import com.klef.jfsd.springbootproject.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private CommunityRepository communityRepository;
	

	@Override
	public String studentRegistration(Student s) {
		// TODO Auto-generated method stub
		studentRepository.save(s);
		return "Student registers successfully!!";
	}

	@Override
	public Student checkStudentLoginByUsername(String susername, String spassword) {
		return studentRepository.checkStudentLoginByUsername(susername, spassword);
	}

	@Override
	public Student checkStudentLoginByEmail(String semail, String spassword) {
		return studentRepository.checkStudentLoginByEmail(semail, spassword);
	}

	@Override
	public String studentUpdate(Student s) {
		Optional<Student> object=studentRepository.findById(s.getSid());
		String msg=null;
		if(object.isPresent()) {
			Student st=object.get();
			st.setSname(s.getSname());
			st.setSgender(s.getSgender());
			st.setSdateofbirth(s.getSdateofbirth());
			st.setScollege(s.getScollege());
			st.setSabout(s.getSabout());
			st.setScontact(s.getScontact());
			st.setSemail(s.getSemail());
			st.setSlocation(s.getSlocation());
			st.setSpassword(s.getSpassword());
			st.setSusername(s.getSusername());
			st.setSimage(s.getSimage());
			studentRepository.save(st);
			msg="Student Updated Successfully";
		}else {
			msg="Student not found";
		}
		return msg;
	}

	@Override
	public Student viewStudentById(long id) {
		return studentRepository.viewStudentById(id);
	}

	@Override
	public List<Community> viewCommunity() {
		return communityRepository.findAll();
	}

	@Override
	public String addCommunityMessage(Community c) {
		communityRepository.save(c);
		return "Message Saved";
		
	}

}

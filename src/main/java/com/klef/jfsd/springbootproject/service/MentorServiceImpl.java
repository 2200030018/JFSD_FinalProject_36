package com.klef.jfsd.springbootproject.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springbootproject.model.Mentor;
import com.klef.jfsd.springbootproject.model.Student;
import com.klef.jfsd.springbootproject.repository.MentorRepository;
import com.klef.jfsd.springbootproject.repository.StudentRepository;

@Service
public class MentorServiceImpl implements MentorService{
	@Autowired
	private MentorRepository mentorRepository;
	
	@Autowired
	private StudentRepository studentrepository;
	@Override
	public String mentorRegistration(Mentor m) {
		try {
			mentorRepository.save(m);
			return "Metor has been registered & login will be given after admin approval till then wait";
		} catch (Exception e) {
			// TODO: handle exception
			return e.getMessage();
		}
		
	}

	@Override
	public Mentor checkMentorLoginByUsername(String musername, String mpassword) {
		return mentorRepository.checkMentorLoginByUsername(musername, mpassword);
	}

	@Override
	public Mentor checkMentorLoginByEmail(String memail, String mpassword) {
		return mentorRepository.checkMentorLoginByEmail(memail, mpassword);
	}

	@Override
	public String mentorUpdate(Mentor m) {
		Optional<Mentor> object=mentorRepository.findById(m.getMid());
		String msg=null;
		if(object.isPresent()) {
			Mentor mn=object.get();
			mn.setMname(m.getMname());
			mn.setMgender(m.getMgender());
			mn.setMdateofbirth(m.getMdateofbirth());
			mn.setMabout(m.getMabout());
			mn.setMcontact(m.getMcontact());
			mn.setMemail(m.getMemail());
			mn.setMloacation(m.getMloacation());
			mn.setMpassword(m.getMpassword());
			mn.setMusername(m.getMusername());
			mn.setMimage(m.getMimage());
			mentorRepository.save(mn);
			msg="Mentor Updated Successfully";
		}else {
			msg="Mentor not found";
		}
		return msg;
	}

	@Override
	public List<Student> viewAllStudents() {
		return studentrepository.findAll();
	}

}

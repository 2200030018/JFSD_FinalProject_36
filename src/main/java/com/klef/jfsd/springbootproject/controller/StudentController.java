package com.klef.jfsd.springbootproject.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootproject.model.Community;
import com.klef.jfsd.springbootproject.model.Student;
import com.klef.jfsd.springbootproject.service.StudentService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv=new ModelAndView("home");
		return mv;
	}
	
	@GetMapping("studenthome")
	public ModelAndView studenthome() {
		ModelAndView mv=new ModelAndView("studenthome");
		return mv;
	}
	
	@GetMapping("studentupdate")
	public ModelAndView studentupdate() {
		ModelAndView mv=new ModelAndView("studentupdate");
		return mv;
	}
	
	@PostMapping("studentupdate")
	public ModelAndView studentupdatePostmethod(HttpServletRequest request,@RequestParam("simage") MultipartFile file) {
		ModelAndView mv=new ModelAndView();
		try {
			long id=Long.parseLong(request.getParameter("sid"));
			String name=request.getParameter("sname");
			String gender=request.getParameter("sgender");
			String dateofbirth=request.getParameter("sdateofbirth");
			String location=request.getParameter("slocation");
			String email=request.getParameter("semail");
			String password=request.getParameter("spassword");
			String contact=request.getParameter("scontact");
			String username=request.getParameter("susername");
			String college=request.getParameter("scollege");
			String about=request.getParameter("sabout");
			byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			
			Student st=new Student();
			st.setSid(id);
			st.setSname(name);
			st.setSgender(gender);
			st.setSdateofbirth(dateofbirth);
			st.setSlocation(location);
			st.setSemail(email);
			st.setSpassword(password);
			st.setScontact(contact);
			st.setSusername(username);
			st.setScollege(college);
			st.setSabout(about);
			st.setSimage(blob);
			String msg=null;
			msg=studentService.studentUpdate(st);
			HttpSession studentSession=request.getSession();
			studentSession.setAttribute("student", st);
			mv.setViewName("studentprofile");
			
		} catch (Exception e) {
			mv.setViewName("studentupdatefail");
			mv.addObject("msg", e.getMessage());
		}
		return mv;
	}
	
	@GetMapping("displaystudentimg")
	public ResponseEntity<byte[]> displaystudentimg(@RequestParam("id") int id) throws Exception
	{
	  Student st=  studentService.viewStudentById((long)id);
	  byte [] imageBytes = null;
	  imageBytes = st.getSimage().getBytes(1,(int) st.getSimage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	  
	// Response Body, HTTP Status Code, Headers
	}
	
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv=new ModelAndView("studentreg");
		return mv;
	}
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request) {
		String sname=request.getParameter("sname");
		String sgender=request.getParameter("sgender");
		String sdateofbirth=request.getParameter("sdateofbirth");
		String slocation=request.getParameter("slocation");
		String semail=request.getParameter("semail");
		String spassword=request.getParameter("spassword");
		String susername=request.getParameter("susername");
		String scontact=request.getParameter("scontact");
		
		Student student=new Student();
		student.setSname(sname);
		student.setSgender(sgender);
		student.setSdateofbirth(sdateofbirth);
		student.setSlocation(slocation);
		student.setSemail(semail);
		student.setSpassword(spassword);
		student.setSusername(susername);
		student.setScontact(scontact);
		ModelAndView mv=new ModelAndView();
		String msg;
		try {
			msg=studentService.studentRegistration(student);
			mv.setViewName("studentregsuccess");
			
		} catch (Exception e) {
			msg=e.getMessage();
			mv.setViewName("studentregfail");
		}
		mv.addObject("msg",msg);
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv=new ModelAndView("studentlogin");
		return mv;
	}
	
	@GetMapping("studentlogout")
	public ModelAndView studentlogout(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("studentlogin");
		HttpSession session=request.getSession();
		session.removeAttribute("student");
		return mv;
	}
	
	
	// this is not using till now & this is used to login student by username only currently using checkStudentLogin for both checks
	@PostMapping("checkStudentLoginByUsername")
	public ModelAndView checkStudentLoginByUsername(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String susername=request.getParameter("susername");
		String spassword=request.getParameter("spassword");
		Student student=studentService.checkStudentLoginByUsername(susername, spassword);
		
		if(student!=null) {
			HttpSession studentSession=request.getSession();
			studentSession.setAttribute("student", student);
			mv.setViewName("studentprofile");
		}else {
			mv.setViewName("studentloginfail");
			mv.addObject("msg","Your have enteres Wrong Credentials! or this user is not yet registered ");
		}
		return mv;
	}
	
	//this is used to login student by email or username both any field 
	@PostMapping("checkStudentLogin")
	public ModelAndView checkStudentLogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String mainfield=request.getParameter("mainfield");
		String spassword=request.getParameter("spassword");
		Student student=studentService.checkStudentLoginByUsername(mainfield, spassword);
		
		if(student==null) {
			student=studentService.checkStudentLoginByEmail(mainfield, spassword);
		}
		
		if(student!=null) {
			HttpSession studentSession=request.getSession();
			studentSession.setAttribute("student", student);
			mv.setViewName("studentprofile");
		}else {
			mv.setViewName("studentloginfail");
			mv.addObject("msg","Your have enteres Wrong Credentials! ");
		}
		return mv;
	}
	
	@GetMapping("studentsessionfail")
	public ModelAndView studentsessionfail() {
		ModelAndView mv=new ModelAndView("studentsessionfail");
		return mv;
	}
	
	@GetMapping("studentprofile")
	public ModelAndView studentprofile() {
		ModelAndView mv=new ModelAndView("studentprofile");
		return mv;
	}
	
	@GetMapping("community")
	public ModelAndView community() {
		ModelAndView mv=new ModelAndView("viewcommunity");
		List<Community> mlist=studentService.viewCommunity();
		mv.addObject("mlist",mlist);
		return mv;
	}
	
	@PostMapping("addmessage")
	public ModelAndView addmessage(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("viewcommunity");
		HttpSession studentSession=request.getSession();
		Student s=(Student)studentSession.getAttribute("student");
		Community c=new Community();
		long sid=s.getSid();
		String susername=s.getSusername();
		String msg=request.getParameter("field");
		c.setSid(sid);
		c.setSusername(susername);
		c.setCmsg(msg);
		studentService.addCommunityMessage(c);
		List<Community> mlist=studentService.viewCommunity();
		mv.addObject("mlist",mlist);
		return mv;
	}
	
	
	
	


}

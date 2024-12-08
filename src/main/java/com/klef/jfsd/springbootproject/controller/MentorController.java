package com.klef.jfsd.springbootproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootproject.model.Mentor;
import com.klef.jfsd.springbootproject.model.Student;
import com.klef.jfsd.springbootproject.service.MentorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MentorController {
	@Autowired
	private MentorService mentorService;
	
	@GetMapping("mentorhome")
	public ModelAndView mentrohome() {
		ModelAndView mv=new ModelAndView("mentorhome");
		return mv;
	}
	
	@GetMapping("mentorprofile")
	public ModelAndView mentorprofile() {
		ModelAndView mv=new ModelAndView("mentorprofile");
		return mv;
	}
	
	@GetMapping("mentorreg")
	public ModelAndView mentorreg() {
		ModelAndView mv=new ModelAndView("mentorreg");
		return mv;
	}
	
	@PostMapping("insertmentor")
	public ModelAndView insertmentor(HttpServletRequest request) {
		String mname=request.getParameter("mname");
		String mgender=request.getParameter("mgender");
		String mdateofbirth=request.getParameter("mdateofbirth");
		String mlocation=request.getParameter("mlocation");
		String memail=request.getParameter("memail");
		String mpassword=request.getParameter("mpassword");
		String musername=request.getParameter("musername");
		String mcontact=request.getParameter("mcontact");
		String mabout=request.getParameter("mabout");
		
		Mentor mentor=new Mentor();
		mentor.setMname(mname);
		mentor.setMgender(mgender);
		mentor.setMdateofbirth(mdateofbirth);
		mentor.setMloacation(mlocation);
		mentor.setMemail(memail);
		mentor.setMpassword(mpassword);
		mentor.setMusername(musername);
		mentor.setMcontact(mcontact);
		mentor.setMabout(mabout);
		mentor.setMstatus("UNAPPROVED");
		ModelAndView mv=new ModelAndView();
		String msg;
		try {
			msg=mentorService.mentorRegistration(mentor);
			mv.setViewName("mentorregsuccess");
		} catch (Exception e) {
			msg=e.getMessage();
			mv.setViewName("mentorregfail");
		}
		mv.addObject("msg",msg);
		return mv;
		
	}
	
	@GetMapping("mentorupdate")
	 public ModelAndView mentorupdate() {
	  ModelAndView mv=new ModelAndView("mentorupdate");
	  return mv;
	 }
	 @PostMapping("mentorupdate")
	 public ModelAndView mentorupdatePostmethod(HttpServletRequest request) {
	  ModelAndView mv=new ModelAndView();
	  long id=Long.parseLong(request.getParameter("mid"));
	  String name=request.getParameter("mname");
	  String gender=request.getParameter("mgender");
	  String dateofbirth=request.getParameter("mdateofbirth");
	  String location=request.getParameter("mlocation");
	  String email=request.getParameter("memail");
	  String password=request.getParameter("mpassword");
	  String contact=request.getParameter("mcontact");
	  String username=request.getParameter("musername");
	  String college=request.getParameter("mcollege");
	  String about=request.getParameter("mabout");
	  Mentor mt=new Mentor();
	  mt.setMid(id);
	  mt.setMname(name);
	  mt.setMgender(gender);
	  mt.setMdateofbirth(dateofbirth);
	  mt.setMloacation(location);
	  mt.setMemail(email);
	  mt.setMpassword(password);
	  mt.setMcontact(contact);
	  mt.setMusername(username);
	  mt.setMabout(about);
	  String msg=null;
	  try {
	   msg=mentorService.mentorUpdate(mt);
	   HttpSession mentorSession=request.getSession();
	   mentorSession.setAttribute("mentor", mt);
	   mv.setViewName("mentorprofile");
	   
	  } catch (Exception e) {
	   mv.setViewName("mentorupdatefail");
	   mv.addObject("msg", e.getMessage());
	  }
	  return mv;
	 }

	
	@GetMapping("mentorlogin")
	public ModelAndView mentorlogin() {
		ModelAndView mv=new ModelAndView("mentorlogin");
		return mv;
	}
	
	@PostMapping("checkMentorLogin")
	public ModelAndView checkMentorLogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String mainfield=request.getParameter("mainfield");
		String mpassword=request.getParameter("mpassword");
		Mentor mentor=mentorService.checkMentorLoginByEmail(mainfield, mpassword);
		if(mentor==null) {
			mentor=mentorService.checkMentorLoginByUsername(mainfield, mpassword);
		}
		if(mentor!=null) {
			HttpSession mentorSession=request.getSession();
			mentorSession.setAttribute("mentor", mentor);
			mv.setViewName("mentorprofile");
		}else {
			mv.addObject("msg", "You have entered wrong cred..!");
			mv.setViewName("mentorloginfail");
		}
		return mv;
	}
	
	@GetMapping("mentorlogout")
	public ModelAndView mentorlogout(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("mentorlogin");
		HttpSession session=request.getSession();
		session.removeAttribute("mentor");
		return mv;
	}
	
	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents() {
		ModelAndView mv=new ModelAndView();
		List<Student> studentlist=mentorService.viewAllStudents();
		mv.setViewName("viewallstudents");
		mv.addObject("mlist", studentlist);
		return mv;
		
	}
	
	

}

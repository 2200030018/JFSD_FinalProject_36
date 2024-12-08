package com.klef.jfsd.springbootproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootproject.model.Admin;
import com.klef.jfsd.springbootproject.model.Mentor;
import com.klef.jfsd.springbootproject.model.Student;
import com.klef.jfsd.springbootproject.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	
	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		ModelAndView mv=new ModelAndView("adminhome");
		return mv;
	}
	

	@GetMapping("adminprofile")
	 public ModelAndView mentorprofile() {
	  ModelAndView mv=new ModelAndView("adminprofile");
	  return mv;
	 }
	
	@GetMapping("adminupdate")
	 public ModelAndView adminupdate() {
	 ModelAndView mv=new ModelAndView("adminupdate");
	  return mv;
	 }
	 @PostMapping("adminupdate")
	 public ModelAndView adminupdatePostmethod(HttpServletRequest request) {
	  ModelAndView mv=new ModelAndView();
	  long id=Long.parseLong(request.getParameter("aid"));
	  String name=request.getParameter("aname");
	  String gender=request.getParameter("agender");
	  String dateofbirth=request.getParameter("adateofbirth");
	  String location=request.getParameter("alocation");
	  String email=request.getParameter("aemail");
	  String password=request.getParameter("apassword");
	  String contact=request.getParameter("acontact");
	  String username=request.getParameter("ausername");
	  String college=request.getParameter("acollege");
	  String about=request.getParameter("aabout");
	  Admin mt=new Admin();
	  mt.setAid(id);
	  mt.setAname(name);
	  mt.setAemail(email);
	  mt.setApassword(password);
	  mt.setAcontact(contact);
	  mt.setAusername(username);
	  String msg=null;
	  try {
	   msg=adminService.adminupdate(mt);
	   HttpSession mentorSession=request.getSession();
	   mentorSession.setAttribute("admin", mt);
	   mv.setViewName("adminprofile");
	   
	  } catch (Exception e) {
	   mv.setViewName("adminupdatefail");
	   mv.addObject("msg", e.getMessage());
	  }
	  return mv;
	 }

	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv=new ModelAndView("adminlogin");
		return mv;
	}
	
	@GetMapping("viewallmentors")
	public ModelAndView viewallmentors() {
		ModelAndView mv=new ModelAndView();
		List<Mentor> mentorlist=adminService.viewAllMentors();
		mv.setViewName("viewallmentors");
		mv.addObject("mlist", mentorlist);
		return mv;
		
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView("adminlogin");
		HttpSession session=request.getSession();
		session.removeAttribute("admin");
		return mv;
	}

	
	@PostMapping("checkAdminLogin")
	public ModelAndView checkAdminLogin(HttpServletRequest request) {
		ModelAndView mv=new ModelAndView();
		String mainfield=request.getParameter("mainfield");
		String password=request.getParameter("apassword");
		Admin admin=adminService.checkAdminLoginByEmail(mainfield, password);
		
		if(admin==null) {
			admin=adminService.checkAdminLoginByUsername(mainfield, password);
		}
		
		if(admin!=null) {
			HttpSession adminSession=request.getSession();
			adminSession.setAttribute("admin", admin);
			mv.setViewName("adminhome");
		}else {
			mv.setViewName("adminlogin");
			mv.addObject("msg","Your have enteres Wrong Credentials! ");
		}
		return mv;
		
	}
	
	

}

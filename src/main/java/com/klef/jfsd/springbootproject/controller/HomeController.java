package com.klef.jfsd.springbootproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springbootproject.model.StressAssessmentResult;
import com.klef.jfsd.springbootproject.service.StressAssessmentService;

@Controller
public class HomeController {
	@Autowired
    private StressAssessmentService stressAssessmentService;

    @PostMapping("/processStressAssessment")
    public String processStressAssessment(
            @RequestParam("q1") int q1,
            @RequestParam("q2") int q2,
            @RequestParam("q3") int q3,
            Model model) {
        // Calculate the score and determine the result
        StressAssessmentResult result = stressAssessmentService.calculateStressLevel(q1, q2, q3);

        // Add the result to the model
        model.addAttribute("result", result);

        // Redirect to the result page
        return "stressAssessmentResult";
    }
	
	@GetMapping("login")
	public ModelAndView login() {
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}
	
	@GetMapping("foodtips")
	public ModelAndView foodtips() {
		ModelAndView mv=new ModelAndView("resourceAccessPage");
		return mv;
	}
	
	@GetMapping("workoutplans")
	public ModelAndView workoutplans() {
		ModelAndView mv=new ModelAndView("wellnessProgramsPage");
		return mv;
	}

}

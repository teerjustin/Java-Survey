package com.teerjustin.survey.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class homeController {
	@RequestMapping("/")
	public String dashboard(HttpSession sesh) {
		System.out.println("hi im home");
		sesh.setAttribute("count", 0);
		return "index.jsp";
	}
	
    @RequestMapping(value="/login", method=RequestMethod.POST)
    public String login(@RequestParam(value="username") String user, @RequestParam(value="dojo") String dojo, @RequestParam(value="language") String language,@RequestParam(value="comments") String comments, HttpSession sesh) {
          // ... process information and save it to the session
    	System.out.println(user);
    	System.out.println(dojo);
    	System.out.println(language);
    	System.out.println(comments);
    	sesh.setAttribute("user", user);
    	sesh.setAttribute("dojo", dojo);
    	sesh.setAttribute("language", language);
    	sesh.setAttribute("comments", comments);
    	return "redirect:/resultsPage";
    }
	
    @GetMapping("/resultsPage")
    public String results(HttpSession sesh, Model model) {
    	model.addAttribute("user", sesh.getAttribute("user"));
    	model.addAttribute("dojo", sesh.getAttribute("dojo"));
    	model.addAttribute("language", sesh.getAttribute("language"));
    	model.addAttribute("comments", sesh.getAttribute("comments"));
    	return "result.jsp";
    }
}


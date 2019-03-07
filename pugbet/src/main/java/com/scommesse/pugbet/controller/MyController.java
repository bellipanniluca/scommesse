package com.scommesse.pugbet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path="/")

public class MyController {
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String showHomePage(ModelMap model){
		return "index";
		}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
		}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String showRegisterPage(ModelMap model){
		return "register";
		}

}

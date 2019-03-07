package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scommesse.pugbet.model.Partita;
import com.scommesse.pugbet.model.PartitaService;

@Controller
@RequestMapping(path="/")

public class MyController {
	
//	@Autowired
//	PartitaService ps;
	
	@RequestMapping(value="/index")
	public String showHomePage(Model model){
		
//		List<Partita> p = ps.findAll();
//		model.addAttribute("att", p);
		
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
	@RequestMapping(value="/userPage", method = RequestMethod.GET)
	public String showUserPage(ModelMap model){
		return "userPage";
		}
	@RequestMapping(value="/basket", method = RequestMethod.GET)
	public String showBasketPage(ModelMap model){
		return "basket";
		}
	@RequestMapping(value="/hockey", method = RequestMethod.GET)
	public String showHockeyPage(ModelMap model){
		return "hockey";
		}

}
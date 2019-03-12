package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scommesse.pugbet.model.Giocata;


@Controller


public class MyController {
	
	@Autowired
	PartitaCalcioService pcs;
	
	@Autowired
	PartitaBasketService pbs;
	
	@Autowired
	PartitaHockeyService phs;
	
	@RequestMapping(value="/")
	public String showHomePage(Model model){
		
		List<PartitaCalcio> p = pcs.findAll();
		model.addAttribute("att", p);
		
		return "index";
		}
	
	@RequestMapping(value="/add")
	public String showProvaPage(ModelMap model){
		
		return "redirect:/";
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
		
		List<PartitaBasket> p = pbs.findAll();
		model.addAttribute("att", p);
		
		return "basket";
		}
	@RequestMapping(value="/hockey", method = RequestMethod.GET)
	public String showHockeyPage(ModelMap model){
		
		List<PartitaHockey> p = phs.findAll();
		model.addAttribute("att", p);
		
		return "hockey";
		}

}
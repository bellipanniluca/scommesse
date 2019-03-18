package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class SchedinaController {
	
	@Autowired
	PartitaCalcioService pcs;
	
	@Autowired
	PartitaBasketService pbs;
	
	@Autowired
	PartitaHockeyService phs;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addHome(Model model){
			
			
			List<PartitaCalcio> p = pcs.findAll();
			model.addAttribute("att", p);
			
			return "index";
		
	}

}

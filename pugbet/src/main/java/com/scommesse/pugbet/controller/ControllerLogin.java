package com.scommesse.pugbet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerLogin {
	
	@Autowired
	UtenteService us;
	
	
	@RequestMapping(value="/accedi", method = RequestMethod.POST)
	public String accedi(@RequestParam("email") String email,
						 @RequestParam("psswrd") String pw,
						 HttpSession session){
		
		Utente utente = new Utente();
		
		if((us.findByEmail(email).getPw()).equals(pw)){
			
			utente = us.findByEmail(email);
			
			System.out.println(utente.getNome() +"loggato");
			session.setAttribute("utente", utente);
			return "redirect:/";
		}
		else {
			System.out.println("login fallito");
			return "redirect:/login";
		}
		
		
		
	}
	
	
}

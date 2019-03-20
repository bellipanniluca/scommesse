package com.scommesse.pugbet.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scommesse.pugbet.model.Schedina;

@Controller
public class ControllerLogin {
	
	@Autowired
	UtenteService us;
	
	@Autowired
	AdminService as;
	
	//admin
	
			
	@RequestMapping(value="/accediAdmin", method = RequestMethod.POST)
	public String accediAdmin(@RequestParam("email") String email,
						 @RequestParam("psswrd") String pw,
						 HttpSession session) {
		
			Admin admin = new Admin();
		
			if((as.findByEmail(email).getPsswrd()).equals(pw)){
		
				admin = as.findByEmail(email);
		
				System.out.println(admin.getNome() +" loggato");
				session.setAttribute("admin", admin);
				return "redirect:/adminPage";
			}
	
			else {
				System.out.println("login Admin fallito");
				return "redirect:/login";
			}
	}
		
		//utente
		@RequestMapping(value="/accedi", method = RequestMethod.POST)
		public String accediUtente(@RequestParam("email") String email,
						 @RequestParam("psswrd") String pw,
						 HttpSession session) {
	
				Utente utente = new Utente();
			
			if((us.findByEmail(email).getPw()).equals(pw)){
				
				utente = us.findByEmail(email);
				
				System.out.println(utente.getNome() +" loggato");
				session.setAttribute("utente", utente);
				Schedina s = new Schedina();
				session.setAttribute("schedina", s);
				return "redirect:/";
			}
			
			else {
				System.out.println("login fallito");
				return "redirect:/login";
			}
		}
}
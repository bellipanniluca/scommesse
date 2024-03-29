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
	
	@RequestMapping(value="/accedi", method = RequestMethod.POST)
	public String accedi(@RequestParam("email") String email,
						 @RequestParam("psswrd") String pw,
						 HttpSession session){
		
		
		
		if((us.findByEmail(email).getPw()).equals(pw)){
			
			Utente utente = new Utente();
			utente = us.findByEmail(email);
			
			session.setAttribute("utente", utente);
			
			Schedina s;
			if(session.getAttribute("schedina") == null) {
				s = new Schedina();
			}
			else {
				s = (Schedina)session.getAttribute("schedina");
			}
			session.setAttribute("schedina", s);
			
			return "redirect:/";
		}
		else {
			System.out.println("login fallito");
			return "redirect:/login";
		}
		
		
		
	}
	
	
}

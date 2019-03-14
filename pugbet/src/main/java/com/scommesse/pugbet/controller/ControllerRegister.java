package com.scommesse.pugbet.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scommesse.pugbet.model.Schedina;

@Controller
public class ControllerRegister {
	
		@Autowired
		UtenteService us;

	    @RequestMapping(value="/reg", method = RequestMethod.POST)
	    public String addUtente(@RequestParam("nome") String nome,
	    						@RequestParam("cognome") String cognome,
	    						@RequestParam("email") String email,
	    						@RequestParam("psswrd") String pw,
	    						@RequestParam("psswrd2") String pw2,
	    						HttpSession session) {
	    	if(pw.equals(pw2)) {
	    		if(us.findByEmail(email)==null) {
	    			Utente u = new Utente();
	    			u.setBilancio(0);
	    			u.setSaldo(0);
	    			u.setNome(nome);
	    			u.setCognome(cognome);
	    			u.setEmail(email);
	    			u.setPw(pw);
	    			System.out.println(u.getNome()+u.getCognome());
	    	
	    			us.save(u);
	    			session.setAttribute("utente", u);
	    			Schedina s = new Schedina();
	    			session.setAttribute("schedina", s);
	    			return "redirect:/";
	    		}
	    		else {
	    			System.out.println("Email già presente"); //Cosa fare se è già registrato
	    			return "redirect:/register";
	    		}
	    	}
	    	else {
	    		System.out.println("Password diverse");
	    		return "redirect:/register";
	    	}
	    	
	        
	    }

}

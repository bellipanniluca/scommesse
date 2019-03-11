package com.scommesse.pugbet.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerRegister {
	
		@Autowired
		UtenteService us;

	    @RequestMapping(value="/reg", method = RequestMethod.POST)
	    public String addUtente(@RequestParam("nome") String nome,
	    						@RequestParam("cognome") String cognome,
	    						@RequestParam("email") String email,
	    						@RequestParam("psswrd") String pw) {
	    	
	    	if(us.findByEmail(email).getId()==null) {
	    	Utente u = new Utente();
	    	u.setBilancio(0);
	    	u.setSaldo(0);
	    	u.setNome(nome);
	    	u.setCognome(cognome);
	    	u.setEmail(email);
	    	u.setPw(pw);
	    	System.out.println(u.getNome()+u.getCognome());
	    	
	    	us.save(u);
	    	}
	    	else {
	    		System.out.println("errore"); //Cosa fare se è già registrato
	    	}
	    	
	    	
	        return "redirect:/";
	    }

}

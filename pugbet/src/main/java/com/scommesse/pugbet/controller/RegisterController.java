package com.scommesse.pugbet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.scommesse.pugbet.model.Utente;
import com.scommesse.pugbet.model.UtenteRepository;


@Controller
@RequestMapping(path="/register")

public class RegisterController {
	
	@Autowired
	private UtenteRepository utenteRepository;
	
	@GetMapping(path="/add")
	public @ResponseBody void addNuovoUtente (
			@RequestParam String nome, 
			@RequestParam String cognome, 
			@RequestParam String email,
			@RequestParam String psswrd) {
		
		Utente n =new Utente();
		n.setNome(nome);
		n.setCognome(cognome);		
		n.setEmail(email);
		n.setPsswrd(psswrd);
		utenteRepository.save(n);
	}

}

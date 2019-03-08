package com.scommesse.pugbet.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.scommesse.pugbet.controller.RegisterController;
import com.scommesse.pugbet.model.Utente;
import com.scommesse.pugbet.controller.UtenteRepository;

@Service
public class RegisterService {
	
	private static final Logger log = LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	UtenteRepository utenteRepository;
	
	@Transactional
	public void registraUtente(Utente utente) {	
		log.info("RegistrazioneService: registraUtente");
		utenteRepository.save(utente);
	}
	
	public boolean usernamePresente(String username) {
		List<Utente> listaUtenti = utenteRepository.findByNome(username);
		return listaUtenti.size() > 0 ? true : false;
	}
	
	public boolean emailPresente(String email) {
		List<Utente> listaUtenti = utenteRepository.findByEmail(email);
		return listaUtenti.size() > 0 ? true : false;
	}
	
	@Transactional
	public List<Utente> listaUtenti() {
		 List<Utente> listaUtenti = new ArrayList<Utente>(utenteRepository.findAll());
		 return listaUtenti;
	}

}

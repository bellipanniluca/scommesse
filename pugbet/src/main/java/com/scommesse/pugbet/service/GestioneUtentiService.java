package com.scommesse.pugbet.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;


import com.scommesse.pugbet.model.Utente;
import com.scommesse.pugbet.controller.UtenteRepository;

public class GestioneUtentiService implements UserDetailsService {
	
	private static final Logger log = LoggerFactory.getLogger(GestioneUtentiService.class);
	
	@Autowired
	private UtenteRepository utenteRepository;
	
	@Override
	public UserDetails loadUserByUsername(String nome) throws UsernameNotFoundException {
		
		log.info("username: " + nome);
		log.info("inizio ricerca utenza in base dati...");
		
		List<Utente> listaUtenti = utenteRepository.findByNome(nome);
		
		if(listaUtenti == null || listaUtenti.size() == 0) {
			throw new UsernameNotFoundException(String.format("L'utente con nome %s non esiste", nome));
		}
		
		log.info("utente presente in base dati");
		
		// si legge l'unico utente presente in base dati (la username e' unica)
		Utente utente = listaUtenti.get(0);
		
		return (UserDetails) listaUtenti;
	}
}

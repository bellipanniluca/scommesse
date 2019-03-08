package com.scommesse.pugbet.controller;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.scommesse.pugbet.model.Utente;
import com.scommesse.pugbet.service.RegisterService;

@Controller
public class ListaUtentiController {
	
	private static final Logger log = LoggerFactory.getLogger(ListaUtentiController.class);
	
	private List<Utente> listaUtenti;
	
    private RegisterService registrazioneService;  
	
	
	public List<Utente> getListaUtenti() {
        if (this.listaUtenti == null) {
            this.listaUtenti = registrazioneService.listaUtenti();
        }
        return listaUtenti;
    }

	public RegisterService getRegistrazioneService() {
		return registrazioneService;
	}

	public void setRegistrazioneService(RegisterService registrazioneService) {
		this.registrazioneService = registrazioneService;
	}
	
}
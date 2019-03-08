package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.scommesse.pugbet.model.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Integer>{
	
	List<Utente> findByNome(String nome);
	List<Utente> findByCognome(String cognome);
	List<Utente> findByEmail(String email);
}

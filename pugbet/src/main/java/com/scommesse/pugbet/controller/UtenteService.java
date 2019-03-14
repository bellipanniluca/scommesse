package com.scommesse.pugbet.controller;


import org.springframework.data.jpa.repository.JpaRepository;

public interface UtenteService extends JpaRepository<Utente, Integer> {
	
	public Utente findByEmail(String email);
	public Utente findById(int id);

}

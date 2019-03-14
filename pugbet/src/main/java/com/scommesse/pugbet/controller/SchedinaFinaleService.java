package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SchedinaFinaleService extends JpaRepository<SchedinaFinale, Integer> {
	
	public List<SchedinaFinale> findByIdUtente(int id);

}

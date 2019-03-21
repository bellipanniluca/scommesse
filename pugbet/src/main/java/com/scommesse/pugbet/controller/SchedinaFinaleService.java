package com.scommesse.pugbet.controller;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

public interface SchedinaFinaleService extends JpaRepository<SchedinaFinale, Integer> {
	
	public List<SchedinaFinale> findByIdUtente(int id);
	
	@Modifying
	@Transactional
	public void deleteByIdUtente(int id);

}

package com.scommesse.pugbet.controller;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartitaCalcioService extends JpaRepository<PartitaCalcio, Integer> {
	
	public PartitaCalcio findById(int id);
}

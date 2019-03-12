package com.scommesse.pugbet.controller;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartitaHockeyService extends JpaRepository<PartitaHockey, Integer> {

	public PartitaHockey findById(int id);
}

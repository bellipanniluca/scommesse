package com.scommesse.pugbet.controller;

import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminService extends JpaRepository<Admin, Integer>{
	
	void deleteById(Integer id); //elimina utente dal db
//	void deleteById(SchedinaFinale schedinaFinale); //elimina schedina dal db (da usare insieme ad utente)
	void deleteById(PartitaCalcio partitaCalcio); 
	void deleteById(PartitaBasket partitaBasket);
	void deleteById(PartitaHockey partitaHockey);

//	void addPartitaCalcio(PartitaCalcio partitaCalcio);
//	void addPartitaBasket(PartitaBasket partitaBasket);
//	void addPartitaHockey(PartitaHockey partitaHockey);
	
	public Admin findByEmail(String email);
	
}
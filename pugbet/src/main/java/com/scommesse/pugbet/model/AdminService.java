package com.scommesse.pugbet.model;

import org.springframework.data.jpa.repository.JpaRepository;

import com.scommesse.pugbet.controller.PartitaBasket;
import com.scommesse.pugbet.controller.PartitaCalcio;
import com.scommesse.pugbet.controller.PartitaHockey;
import com.scommesse.pugbet.controller.SchedinaFinale;
import com.scommesse.pugbet.controller.Utente;

public interface AdminService extends JpaRepository<Admin, Integer>{
	
	void deleteById(Utente utente); //elimina utente dal db
	void deleteById(SchedinaFinale schedinaFinale); //elimina schedina dal db (da usare insieme ad utente)
	void deleteById(PartitaCalcio partitaCalcio); 
	void deleteById(PartitaBasket partitaBasket);
	void deleteById(PartitaHockey partitaHockey);
	
	void addPartitaCalcio(PartitaCalcio partitaCalcio);
	void addPartitaBasket(PartitaBasket partitaBasket);
	void addPartitaHockey(PartitaHockey partitaHockey);
	
	
}
package com.scommesse.pugbet.model;

public interface AdminService {
	
	void deleteUtente(Utente utente);
	void deletePartitaCalcio(PartitaCalcio partitaCalcio);
	void deletePartitaBasket(PartitaBasket partitaBasket);
	void deletePartitaHockey(PartitaHockey partitaHockey);
	void addPartitaCalcio(PartitaCalcio partitaCalcio);
	void addPartitaBasket(PartitaBasket partitaBasket);
	void addPartitaHockey(PartitaHockey partitaHockey);
	
}

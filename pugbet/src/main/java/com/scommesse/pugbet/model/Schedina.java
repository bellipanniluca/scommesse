package com.scommesse.pugbet.model;

import java.util.ArrayList;

public class Schedina {
	
	private ArrayList<Giocata> listaGiocate;
	private double quotaTotale = 1;

	public Schedina() {
		
		super();
		listaGiocate = new ArrayList();
	}

	public ArrayList<Giocata> getListaGiocate() {
		
		return listaGiocate;
	}

	public void setListaGiocate(ArrayList<Giocata> listaGiocate) {
		
		this.listaGiocate = listaGiocate;
	}

	public void add(Giocata giocata) {
		
		listaGiocate.add(giocata);
		
	}

	public double getQuotaTotale() {
		return quotaTotale;
	}

	public void setQuotaTotale(double quotaTotale) {
		this.quotaTotale = quotaTotale;
	}
	

	
}

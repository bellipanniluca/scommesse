package com.scommesse.pugbet.model;


public class Giocata {
	
	private Integer id;
	
	private String casa;
	
	private String trasferta;
	
	private boolean esito = true;
	
	private String quotaSelezionata;
	
	

	public Giocata(Integer id, String casa, String trasferta, boolean esito, String quotaSelezionata) {
		super();
		this.id = id;
		this.casa = casa;
		this.trasferta = trasferta;
		this.esito = esito;
		this.quotaSelezionata = quotaSelezionata;
	}
	
	

	public Giocata() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCasa() {
		return casa;
	}

	public void setCasa(String casa) {
		this.casa = casa;
	}

	public String getTrasferta() {
		return trasferta;
	}

	public void setTrasferta(String trasferta) {
		this.trasferta = trasferta;
	}

	public boolean isEsito() {
		return esito;
	}

	public void setEsito(boolean esito) {
		this.esito = esito;
	}

	public String getQuotaSelezionata() {
		return quotaSelezionata;
	}

	public void setQuotaSelezionata(String quotaSelezionata) {
		this.quotaSelezionata = quotaSelezionata;
	}
	
	
	
	
	
	
	
	
	
	
}

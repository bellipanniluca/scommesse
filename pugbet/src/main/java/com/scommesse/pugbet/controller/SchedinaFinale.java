package com.scommesse.pugbet.controller;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="schedina")
public class SchedinaFinale {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer codice;
	
	@Column(name="id_utente")
	private Integer idUtente;
	
	@Column
	private double quota;
	
	@Column
	private double importo;
	
	@Column
	private double vincita;
	
	@Column
	private String esito;
	
	@Column
	private Date data;

	public SchedinaFinale(Integer codice, Integer idUtente, double quota, double importo, double vincita, String esito,
			Date data) {
		super();
		this.codice = codice;
		this.idUtente = idUtente;
		this.quota = quota;
		this.importo = importo;
		this.vincita = vincita;
		this.esito = esito;
		this.data = data;
	}

	public SchedinaFinale() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getCodice() {
		return codice;
	}

	public void setCodice(Integer codice) {
		this.codice = codice;
	}

	public Integer getIdUtente() {
		return idUtente;
	}

	public void setIdUtente(Integer idUtente) {
		this.idUtente = idUtente;
	}

	public double getQuota() {
		return quota;
	}

	public void setQuota(double quota) {
		this.quota = quota;
	}

	public double getImporto() {
		return importo;
	}

	public void setImporto(double importo) {
		this.importo = importo;
	}

	public double getVincita() {
		return vincita;
	}

	public void setVincita(double vincita) {
		this.vincita = vincita;
	}

	public String getEsito() {
		return esito;
	}

	public void setEsito(String esito) {
		this.esito = esito;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}
	
	
}

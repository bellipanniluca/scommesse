package com.scommesse.pugbet.controller;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
* <h1>Schedina Finale</h1>
* <p>
* L'oggeto SchedinaFinale rappresenta una sintesi della scommessa effettuata che viene
* visualizzata nella pagina riepilogo dell'utente.
* <br>
* La SchedinaFinale ha un codice identificativo, il codice dell'utente che ha effettuato la scommessa,
* la quota della scommessa, l'importo inserito dall'utente, la possibile vincita e l'esito ("Vincente" o "Perdente")
* </p>
*
*
* 
* @version 1.0
* @since   2019-03-20
*/
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
	private LocalDate data;
	
	@Column(name="bilancio_schedina")
	private double bilancio;

	public SchedinaFinale(Integer codice, Integer idUtente, double quota, double importo, double vincita, String esito,
			LocalDate data, double bilancio) {
		super();
		this.codice = codice;
		this.idUtente = idUtente;
		this.quota = quota;
		this.importo = importo;
		this.vincita = vincita;
		this.esito = esito;
		this.data = data;
		this.bilancio = bilancio;
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

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate localDate) {
		this.data = localDate;
	}

	public double getBilancio() {
		return bilancio;
	}

	public void setBilancio(double bilancio) {
		this.bilancio = bilancio;
	}
	
	
}

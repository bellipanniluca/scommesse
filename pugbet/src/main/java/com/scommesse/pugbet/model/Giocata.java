package com.scommesse.pugbet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Giocata {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String lega;
	
	private String casa;
	
	private String trasferta;
	
	private String esito;
	
	private String quota;

	public Integer getId() {
		return id;
	}
	
	@Column(name="id")
	public void setId(Integer id) {
		this.id = id;
	}

	public String getLega() {
		return lega;
	}

	@Column(name="lega")
	public void setLega(String lega) {
		this.lega = lega;
	}

	public String getCasa() {
		return casa;
	}

	@Column(name="casa")
	public void setCasa(String casa) {
		this.casa = casa;
	}

	public String getTrasferta() {
		return trasferta;
	}

	@Column(name="trasferta")
	public void setTrasferta(String trasferta) {
		this.trasferta = trasferta;
	}

	public String getEsito() {
		return esito;
	}

	@Column(name="esito")
	public void setEsito(String esito) {
		this.esito = esito;
	}

	public String getQuota() {
		return quota;
	}

	public void setQuota(String quota) {
		this.quota = quota;
	}
	
	
	
	
	
	
	
	
}

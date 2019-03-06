package com.scommesse.pugbet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Utente {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	
	private String nome;
	
	private String cognome;
	
	private String email;
	
	private String psswrd;
	
	private double bilancio; 
	
	private double saldo;
	
	public double getSaldo() {
		return saldo;
	}

	@Column(name="saldo")
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}


	public double getBilancio() {
		return bilancio;
	}
	
	@Column(name="bilancio")
	public void setBilancio(double bilancio) {
		this.bilancio = bilancio;
	}

	public Integer getId() {
		
		return id;
	}
	
	@Column(name="id")
	public void setId(Integer id) {
		
		this.id=id;
	}
	
	public String getNome() {
		return nome;
	}
	
	@Column(name="nome")
	public void setNome(String nome) {
		this.nome=nome;
	}
	
	public String getCognome() {
		return cognome;
	}

	@Column(name="cognome")
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getPsswrd() {
		return psswrd;
	}

	@Column(name="pw")
	public void setPsswrd(String psswrd) {
		this.psswrd = psswrd;
	}

	public String getEmail() {
		return email;
	}
	
	@Column(name="email")
	public void setEmail(String email) {
		this.email=email;
	}

}

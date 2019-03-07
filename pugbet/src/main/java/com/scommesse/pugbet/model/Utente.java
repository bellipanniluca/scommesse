package com.scommesse.pugbet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="utenti")
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
	
	
	
	@Column(name="saldo")
	public double getSaldo() {
		return saldo;
	}

	
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	@Column(name="bilancio")
	public double getBilancio() {
		return bilancio;
	}
	
	
	public void setBilancio(double bilancio) {
		this.bilancio = bilancio;
	}

	@Column(name="id")
	public Integer getId() {
		
		return id;
	}
	
	
	public void setId(Integer id) {
		
		this.id=id;
	}
	
	@Column(name="nome")
	public String getNome() {
		return nome;
	}
	
	
	public void setNome(String nome) {
		this.nome=nome;
	}
	
	@Column(name="cognome")
	public String getCognome() {
		return cognome;
	}

	
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	@Column(name="pw")
	public String getPsswrd() {
		return psswrd;
	}

	
	public void setPsswrd(String psswrd) {
		this.psswrd = psswrd;
	}

	@Column(name="email")
	public String getEmail() {
		return email;
	}
	
	
	public void setEmail(String email) {
		this.email=email;
	}

}

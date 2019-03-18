package com.scommesse.pugbet.controller;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="calcio")
public class PartitaCalcio {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	
	@Column
	private Integer anno;
	@Column
	private Integer giorno;
	@Column
	private String mese;
	@Column
	private String casa;
	@Column
	private String trasferta;
	
	@Column
	private double home;
	@Column
	private double x;
	@Column
	private double away;
	
	@Column
	private String esito;
	
	
	
	public PartitaCalcio() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PartitaCalcio(Integer id, Integer anno, Integer giorno, String mese, String casa, String trasferta, double home,
			double x, double away, String esito) {
		super();
		this.id = id;
		this.anno = anno;
		this.giorno = giorno;
		this.mese = mese;
		this.casa = casa;
		this.trasferta = trasferta;
		this.home = home;
		this.x = x;
		this.away = away;
		this.esito = esito;
	}
	
	
	
	public String getEsito() {
		return esito;
	}
	public void setEsito(String esito) {
		this.esito = esito;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAnno() {
		return anno;
	}
	public void setAnno(Integer anno) {
		this.anno = anno;
	}
	public Integer getGiorno() {
		return giorno;
	}
	public void setGiorno(Integer giorno) {
		this.giorno = giorno;
	}
	public String getMese() {
		return mese;
	}
	public void setMese(String mese) {
		this.mese = mese;
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
	public double getHome() {
		return home;
	}
	public void setHome(double home) {
		this.home = home;
	}
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getAway() {
		return away;
	}
	public void setAway(double away) {
		this.away = away;
	}
	
	
	
}

package com.scommesse.pugbet.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="calcio")
public class Partita {

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
	
}

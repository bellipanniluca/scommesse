package com.scommesse.pugbet.controller;

import java.time.LocalDate;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
* <h1>Schedina Finale Service</h1>
* 
* <p>
* Interfaccia con i metodi della JpaRepository per le sintesi delle scommesse
* </p>
*
*
* 
* @version 1.0
* @since   2019-03-20
*/
public interface SchedinaFinaleService extends JpaRepository<SchedinaFinale, Integer> {
	
	@Modifying
	@Transactional
	public void deleteByIdUtente(int id);
	
	public List<SchedinaFinale> findByIdUtente(int id);
	public List<SchedinaFinale> findByIdUtenteOrderByCodiceDesc(int id);
	public List<SchedinaFinale> findDistinctByIdUtente(int id);
	
	@Query("SELECT DISTINCT data FROM SchedinaFinale s WHERE s.idUtente = ?1")
	public List<LocalDate> findDistinctDataByIdUtente(int id);
	
	@Query("SELECT sum(s.bilancio) FROM SchedinaFinale s WHERE s.idUtente = ?1 GROUP BY s.data")
	public List<Double> findWinByUtenteGroupByData(int id);

}

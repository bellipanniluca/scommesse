package com.scommesse.pugbet.controller;

import org.springframework.data.jpa.repository.JpaRepository;

public interface PartitaBasketService extends JpaRepository<PartitaBasket, Integer> {

	public PartitaBasket findById(int id);
}

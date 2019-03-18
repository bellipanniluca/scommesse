package com.scommesse.pugbet.controller;

import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scommesse.pugbet.model.Giocata;
import com.scommesse.pugbet.model.Schedina;

@Controller
public class ControllerSchedina {
	
	@Autowired
	PartitaCalcioService pcs;
	
	@Autowired
	PartitaBasketService pbs;
	
	@Autowired
	PartitaHockeyService phs;
	
	Schedina schedina = new Schedina();
	
	@RequestMapping(value = "/scommetti", method = RequestMethod.GET)
	public String scommetti(Model model, HttpSession session) {
		
		SchedinaFinale schedinaCorr = new SchedinaFinale();
		Schedina s = (Schedina)session.getAttribute("schedina");
		
		schedinaCorr.setData(LocalDate.now());
		schedinaCorr.setQuota(s.getQuotaTotale());
		schedinaCorr.setImporto(2);
		schedinaCorr.setVincita(100);
		
		
		return "redirect:/";
	}
	
	
	@RequestMapping(value = "/addSchedina", method = RequestMethod.GET)
	public void addSchedina(Model model, @RequestParam("idPartita") int idPartita,
										   @RequestParam("tipo") String tipo,
										   @RequestParam("quotaSel") String quotaSel,
										   HttpSession session,
										   HttpServletResponse response,
										   HttpServletRequest request) {
		
		Giocata giocata = new Giocata();
		double quotaVal;
		double quotaTot;
		
		giocata.setId(idPartita);
		giocata.setQuotaSelezionata(quotaSel);
		giocata.setTipo(tipo);
		
		
		
//		System.out.println(giocata.getId() + giocata.getQuotaSelezionata() + giocata.getTipo());
//		model.addAttribute("giocata", giocata);
		
		switch(tipo) {
			case "calcio":{
				switch(quotaSel) {
				case "H":{
					quotaVal = pcs.findById(idPartita).getHome();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				case "X":{
					quotaVal = pcs.findById(idPartita).getX();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				case "A":{
					quotaVal = pcs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				}
				break;
				
			}
			case "basket":{
				switch(quotaSel) {
				case "H":{
					quotaVal = pbs.findById(idPartita).getHome();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				
				case "A":{
					quotaVal = pbs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				}
				break;
				
			}
			case "hockey":{
				switch(quotaSel) {
				case "H":{
					quotaVal = phs.findById(idPartita).getHome();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				
				case "A":{
					quotaVal = phs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					break;
				}
				}
				break;
				
			}
				
		
		}
		quotaTot = schedina.getQuotaTotale() * giocata.getQuotaValore();
		quotaTot = Math.round(quotaTot * 100);
		schedina.setQuotaTotale(quotaTot/100);
		schedina.getListaGiocate().add(giocata);
		
		System.out.println(giocata.getId() + giocata.getQuotaSelezionata() + giocata.getTipo() + giocata.getQuotaValore());
		for(Giocata g : schedina.getListaGiocate())
			System.out.println(g.getQuotaSelezionata());
		System.out.println(schedina.getQuotaTotale());
		
		session.setAttribute("schedina", schedina);
		
//		return "redirect:/";
	}
}

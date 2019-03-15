package com.scommesse.pugbet.controller;



import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;

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
	
	@Autowired
	SchedinaFinaleService sfs;
	
	@Autowired
	UtenteService us;
	
	
	
	@RequestMapping(value = "/scommetti", method = RequestMethod.GET)
	public String scommetti(Model model, HttpSession session) {
		
		SchedinaFinale schedinaCorr = new SchedinaFinale();
		Schedina s = (Schedina)session.getAttribute("schedina");
		Utente u =(Utente)session.getAttribute("utente");
		
		double importo = 2;
		
		schedinaCorr.setData(LocalDate.now());
		schedinaCorr.setQuota(s.getQuotaTotale());
		schedinaCorr.setImporto(importo);
		schedinaCorr.setVincita(s.getQuotaTotale()*importo);
		schedinaCorr.setIdUtente(u.getId());
		
		u.setBilancio(u.getBilancio() - importo);
		u.setSaldo(u.getSaldo() - importo);
		us.save(u);
		
		session.setAttribute("schedinaCorr", schedinaCorr);
		session.setAttribute("utente", u);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/risultati", method = RequestMethod.GET)
	public String risultati(Model model, HttpSession session) {
		
		Utente u = (Utente)session.getAttribute("utente");
		SchedinaFinale sf = (SchedinaFinale)session.getAttribute("schedinaCorr");
		
		Schedina schedina = (Schedina)session.getAttribute("schedina");
		boolean esitoTot = true;
		
		for(Giocata giocata : schedina.getListaGiocate()) {
			
			String risultato;
			
			switch(giocata.getTipo()) {
			
				case "calcio":{
					int id = giocata.getId();
					risultato = pcs.findById(id).getEsito();
					if(!giocata.getQuotaSelezionata().equals(risultato)) 
						esitoTot = false;
					break;
					
				}
				case "basket":{
					int id = giocata.getId();
					risultato = pbs.findById(id).getEsito();
					if(!giocata.getQuotaSelezionata().equals(risultato)) 
						esitoTot = false;
					break;
					
				}
				case "hockey":{
					int id = giocata.getId();
					risultato = phs.findById(id).getEsito();
					if(!giocata.getQuotaSelezionata().equals(risultato)) 
						esitoTot = false;
					break;
				}
				
			}
			
		}
		
		
		
		
		if(esitoTot) {
			
			sf.setEsito("Vincente");
			sfs.save(sf);
			double b = (u.getBilancio() + sf.getVincita())*100;
			double c = (u.getSaldo() + sf.getVincita())*100;
			b = Math.round(b);
			c = Math.round(c);
			u.setBilancio(b/100);
			u.setSaldo(c/100);
			us.save(u);
			
		}
		else {
			
			sf.setEsito("Perdente");
			sfs.save(sf);
			
		}
		
		sf = null;
		Schedina s = new Schedina();

		
		session.setAttribute("schedinaCorr", sf);
		session.setAttribute("schedina", s);
		
		
		return "redirect:/riepilogo";
	}
	
	
	@RequestMapping(value = "/addSchedina", method = RequestMethod.GET)
	public String addSchedina(Model model, @RequestParam("idPartita") int idPartita,
										   @RequestParam("tipo") String tipo,
										   @RequestParam("quotaSel") String quotaSel,
										   HttpSession session) {
		
		Schedina schedina;
		if(session.getAttribute("schedina") == null) {
			schedina = new Schedina();
		}
		else {
			schedina = (Schedina)session.getAttribute("schedina");
		}
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
		schedina.add(giocata);
		
		System.out.println(giocata.getId() + giocata.getQuotaSelezionata() + giocata.getTipo() + giocata.getQuotaValore());
		for(Giocata g : schedina.getListaGiocate())
			System.out.println(g.getQuotaSelezionata());
		System.out.println(schedina.getQuotaTotale());
		
		session.setAttribute("schedina", schedina);
		/*try {
			response.getWriter().append("prova" + request.getParameter("pa"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		if(tipo.equals("calcio")) 
			return "redirect:/";
		else
			if(tipo.equals("basket"))
				return "redirect:/basket";
			else
				return "redirect:/hockey";
			
		
	}
}

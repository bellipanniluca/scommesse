package com.scommesse.pugbet.controller;



import java.io.IOException;
import java.time.LocalDate;
import java.util.HashMap;

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
	
	int i=0;
	
	
	
	@RequestMapping(value="/ricarica",method=RequestMethod.GET)
	public String ricarica(@RequestParam("saldo") double importoSaldo,
						 HttpSession session) {
		Utente u=(Utente)session.getAttribute("utente");
		if(importoSaldo < 0)
			return "redirect:/ricaricasaldo";
		else {
		double saldo=u.getSaldo();
		saldo+=importoSaldo;
		u.setSaldo(saldo);
		us.save(u);
		return "redirect:/";
		}
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/scommetti", method = RequestMethod.GET)
	public String scommetti(Model model, HttpSession session) {
		
		if(session.getAttribute("utente") == null) {
			return "redirect:/login";
		}
		SchedinaFinale schedinaCorr = new SchedinaFinale();
		Schedina copia = (Schedina)session.getAttribute("schedina");
		Utente u =(Utente)session.getAttribute("utente");
		i++;
		double importo;
		try {
			importo = (double)session.getAttribute("importo");
			if(importo>u.getSaldo()) {
				return "redirect:/ricaricasaldo";
			}
		}catch(Exception e) {
			return "redirect:/";
		}
		
		if(importo < 0)
			return "redirect:/";
		
		double vincita = copia.getQuotaTotale()*importo;
		vincita = Math.round(vincita*100);
		
		schedinaCorr.setData(LocalDate.now());
		schedinaCorr.setQuota(copia.getQuotaTotale());
		schedinaCorr.setImporto(importo);
		schedinaCorr.setVincita(vincita/100);
		schedinaCorr.setIdUtente(u.getId());
		
		u.setBilancio(u.getBilancio() - importo);
		u.setSaldo(u.getSaldo() - importo);
		us.save(u);
		
		HashMap<Integer,SchedinaFinale> schedineCorr;
		if(session.getAttribute("schedineCorr") == null) {
			schedineCorr = new HashMap<Integer,SchedinaFinale>();
		}
		else {
			schedineCorr = (HashMap<Integer,SchedinaFinale>)session.getAttribute("schedineCorr");
		}
		
		HashMap<Integer,Schedina> copie;
		if(session.getAttribute("copie") == null) {
			copie = new HashMap<Integer,Schedina>();
		}
		else {
			copie = (HashMap<Integer,Schedina>)session.getAttribute("copie");
		}
		
		schedineCorr.put(i,schedinaCorr);
		copie.put(i, copia);
		System.out.println("codice" +i);
		System.out.println("sc" +schedineCorr.get(i)+" copia"+copie.get(i));
		
		session.setAttribute("schedineCorr", schedineCorr);
		session.setAttribute("utente", u);
		session.setAttribute("copie", copie);
		
		session.setAttribute("schedina", new Schedina());
		session.setAttribute("importo", null);
		
		return "redirect:/riepilogo";
}
	
	@RequestMapping(value = "/risultati", method = RequestMethod.GET)
	public String risultati(Model model, HttpSession session,
							@RequestParam("codice") int codice) {
		
		Utente u = (Utente)session.getAttribute("utente");
		
		@SuppressWarnings("unchecked")
		HashMap<Integer,SchedinaFinale> sfl=(HashMap<Integer,SchedinaFinale>)session.getAttribute("schedineCorr");
		SchedinaFinale sf = null;
		@SuppressWarnings("unchecked")
		HashMap<Integer,Schedina> copie=(HashMap<Integer,Schedina>)session.getAttribute("copie");
		//Schedina schedina = (Schedina)session.getAttribute("copia");
				
		boolean esitoTot = true;
		Schedina schedina = null;
		
		sf = sfl.get(codice);
		schedina = copie.get(codice);
		System.out.println("codice:"+codice);
		
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
		
		sfl.remove(codice);
//		Schedina s = new Schedina();
		copie.remove(codice);
		
		session.setAttribute("schedineCorr", sfl);
		session.setAttribute("copie", copie);
		
		return "redirect:/riepilogo";
	}
	
	@RequestMapping(value="/rimuoviSchedina", method=RequestMethod.GET)
	public String rimuovi(Model model, HttpSession session,
						 @RequestParam("codice") int codice) {
		
		Utente u = (Utente)session.getAttribute("utente");
		
		@SuppressWarnings("unchecked")
		HashMap<Integer,SchedinaFinale> sfl=(HashMap<Integer,SchedinaFinale>)session.getAttribute("schedineCorr");
		SchedinaFinale sf = null;
		@SuppressWarnings("unchecked")
		HashMap<Integer,Schedina> copie=(HashMap<Integer,Schedina>)session.getAttribute("copie");
		
		sf = sfl.get(codice);
		
		u.setSaldo(u.getSaldo() + sf.getImporto());
		u.setBilancio(u.getBilancio() + sf.getImporto());
		us.save(u);
		
		sfl.remove(codice);
		copie.remove(codice);
		session.setAttribute("schedineCorr", sfl);
		session.setAttribute("copie", copie);
		
		return "redirect:/riepilogo";
		
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@RequestParam("btn-match") int idPartita,
						 @RequestParam("tipo") String tipo,
						 @RequestParam("pagina") String pagina,
						 HttpSession session){
		Schedina schedina = (Schedina)session.getAttribute("schedina");
		
		 for(int i=0; i<schedina.getListaGiocate().size();i++) 
			if(idPartita==schedina.getListaGiocate().get(i).getId() && schedina.getListaGiocate().get(i).getTipo().equals(tipo)) {
				
				double quota = schedina.getListaGiocate().get(i).getQuotaValore();
				double quotaTot = Math.round(schedina.getQuotaTotale()/quota*100);
				quotaTot = quotaTot/100;
				schedina.setQuotaTotale(quotaTot);
				
				schedina.getListaGiocate().remove(i);
				
				
			}
		/*for(Giocata giocata : schedina.getListaGiocate()) {
			if(giocata.getId() == idPartita && giocata.getTipo().equals(tipo))
				schedina.getListaGiocate().remove(giocata);
		}*/
		
		 if(pagina.equals("calcio")) 
				return "redirect:/";
			else if(pagina.equals("basket"))
					return "redirect:/basket";
				else
					return "redirect:/hockey";
	}
	
	@RequestMapping(value="/calcolo", method=RequestMethod.GET)
	public void calcolo(HttpServletRequest request,HttpServletResponse response, HttpSession session) throws IOException {
		String s=request.getParameter("pa");
		double cifra=Double.parseDouble(s);
		Schedina schedina = (Schedina)session.getAttribute("schedina");
		
		double c = cifra*schedina.getQuotaTotale();
		c = Math.round(c*100);
		response.getWriter().print("Totale: "+ c/100);
		
		session.setAttribute("importo", cifra);
	}
	
	@RequestMapping(value = "/addSchedina", method = RequestMethod.GET)
	public String addSchedina(Model model, @RequestParam("idPartita") int idPartita,
										   @RequestParam("tipo") String tipo,
										   @RequestParam("quotaSel") String quotaSel,
										   HttpSession session) {
		
		
		Schedina schedina = (Schedina)session.getAttribute("schedina");
		
		Giocata giocata = new Giocata();
		double quotaVal;
		double quotaTot;
		String casa;
		String trasferta;
		
		giocata.setId(idPartita);
		giocata.setQuotaSelezionata(quotaSel);
		giocata.setTipo(tipo);
		
		for(Giocata g : schedina.getListaGiocate()) {
			if(idPartita == g.getId() && quotaSel.equals(g.getQuotaSelezionata()))
				if(tipo.equals("calcio")) 
					return "redirect:/";
				else
					if(tipo.equals("basket"))
						return "redirect:/basket";
					else
						return "redirect:/hockey";
		}
		
		
		
//		System.out.println(giocata.getId() + giocata.getQuotaSelezionata() + giocata.getTipo());
//		model.addAttribute("giocata", giocata);
		
		switch(tipo) {
			case "calcio":{
				switch(quotaSel) {
				case "H":{
					quotaVal = pcs.findById(idPartita).getHome();
					giocata.setQuotaValore(quotaVal);
					casa = pcs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = pcs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
					break;
				}
				case "X":{
					quotaVal = pcs.findById(idPartita).getX();
					giocata.setQuotaValore(quotaVal);
					casa = pcs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = pcs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
					break;
				}
				case "A":{
					quotaVal = pcs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					casa = pcs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = pcs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
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
					casa = pbs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = pbs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
					break;
				}
				
				case "A":{
					quotaVal = pbs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					casa = pbs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = pbs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
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
					casa = phs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = phs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
					break;
				}
				
				case "A":{
					quotaVal = phs.findById(idPartita).getAway();
					giocata.setQuotaValore(quotaVal);
					casa = phs.findById(idPartita).getCasa();
					giocata.setCasa(casa);
					trasferta = phs.findById(idPartita).getTrasferta();
					giocata.setTrasferta(trasferta);
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
		
		/*System.out.println(giocata.getId() + giocata.getQuotaSelezionata() + giocata.getTipo() + giocata.getQuotaValore());
		for(Giocata g : schedina.getListaGiocate())
			System.out.println(g.getQuotaSelezionata());
		System.out.println(schedina.getQuotaTotale());*/
		
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

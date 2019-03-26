package com.scommesse.pugbet.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.scommesse.pugbet.model.Schedina;

/**
* <h1>Controller Generale</h1>
* 
* <p>
* Controller che si occupa di operazioni generali e rinvio a jsp
* </p>
*
*
* 
* @version 1.0
* @since   2019-03-20
*/

@Controller
public class MyController {
	
	@Autowired
	PartitaCalcioService pcs;
	
	@Autowired
	PartitaBasketService pbs;
	
	@Autowired
	PartitaHockeyService phs;
	
	@Autowired
	UtenteService us;
	
	@Autowired
	AdminService as;
	
	@Autowired
	SchedinaFinaleService sfs;
	
	/**
	   * Metodo che reindirizza alla homepage. Inserisce sul model le partite di calcio
	   * e la schedina in corso da visualizzare
	   * @return index jsp di homepage
	   */
	@RequestMapping(value="/")
	public String showHomePage(Model model, HttpSession session){
		
		
		
		List<PartitaCalcio> p = pcs.findAll();
		model.addAttribute("att", p);
		
		if(session.getAttribute("utente") == null) {
			
			Schedina schedina;
			if(session.getAttribute("schedina") == null) {
				schedina = new Schedina();
			}
			else {
				schedina = (Schedina)session.getAttribute("schedina");
			}
			session.setAttribute("schedina", schedina);
			model.addAttribute("schedina", schedina.getListaGiocate());
			model.addAttribute("quotaTot", schedina.getQuotaTotale());
			return "index";
		}
		else {
			Utente u = (Utente)session.getAttribute("utente");
			Schedina s = (Schedina)session.getAttribute("schedina");
			model.addAttribute("utente", u);
			model.addAttribute("schedina", s.getListaGiocate());
			model.addAttribute("quotaTot", s.getQuotaTotale());
			return "index";
		}
		}
	
	/**
	   * Metodo che reindirizza al login
	   * @return login jsp di login
	   */
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
		}
	
	/**
	   * Metodo che reindirizza al login dell'amministratore
	   * @return adminLogin jsp di login per amministratore
	   */
	@RequestMapping(value="/adminLogin", method = RequestMethod.GET)
	public String showAdminLoginPage(ModelMap model){
		return "adminLogin";
		}
	
	/**
	   * Metodo che effettua il logout
	   * @return redirect a homepage
	   */
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model, HttpSession session){
		
		session.invalidate();
		
		return "redirect:/";
		}
	
	/**
	   * Metodo che reindirizza alla registrazione
	   * @return register jsp di registrazione
	   */
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String showRegisterPage(ModelMap model){
		return "register";
		}
	
	/**
	   * Metodo che reindirizza alla pagina basket. Inserisce sul model le partite di basket
	   * e la schedina in corso da visualizzare
	   * @return basket jsp della pagina basket
	   */
	@RequestMapping(value="/basket", method = RequestMethod.GET)
	public String showBasketPage(ModelMap model, HttpSession session){
		
		List<PartitaBasket> p = pbs.findAll();
		model.addAttribute("att", p);
		
		if(session.getAttribute("utente") == null) {
			
			Schedina schedina;
			if(session.getAttribute("schedina") == null) {
				schedina = new Schedina();
			}
			else {
				schedina = (Schedina)session.getAttribute("schedina");
			}
			session.setAttribute("schedina", schedina);
			model.addAttribute("schedina", schedina.getListaGiocate());
			model.addAttribute("quotaTot", schedina.getQuotaTotale());
			return "basket";
		}
		else {
			Utente u = (Utente)session.getAttribute("utente");
			Schedina s = (Schedina)session.getAttribute("schedina");
			model.addAttribute("utente", u);
			model.addAttribute("schedina", s.getListaGiocate());
			model.addAttribute("quotaTot", s.getQuotaTotale());
			return "basket";
		}
		}
		
		
	/**
	   * Metodo che reindirizza alla pagina hockey. Inserisce sul model le partite di hockey
	   * e la schedina in corso da visualizzare
	   * @return hockey jsp della pagina hockey
	   */
	@RequestMapping(value="/hockey", method = RequestMethod.GET)
	public String showHockeyPage(ModelMap model, HttpSession session){
		
		List<PartitaHockey> p = phs.findAll();
		model.addAttribute("att", p);
		
		if(session.getAttribute("utente") == null) {
			
			Schedina schedina;
			if(session.getAttribute("schedina") == null) {
				schedina = new Schedina();
			}
			else {
				schedina = (Schedina)session.getAttribute("schedina");
			}
			session.setAttribute("schedina", schedina);
			model.addAttribute("schedina", schedina.getListaGiocate());
			model.addAttribute("quotaTot", schedina.getQuotaTotale());
			return "hockey";
		}
		else {
			Utente u = (Utente)session.getAttribute("utente");
			Schedina s = (Schedina)session.getAttribute("schedina");
			model.addAttribute("utente", u);
			model.addAttribute("schedina", s.getListaGiocate());
			model.addAttribute("quotaTot", s.getQuotaTotale());
			return "hockey";
		}
		}
		
	/**
	   * Metodo che reindirizza alla pagina di riepilogo. Inserisce sul model le scommesse 
	   * effettuate e quelle in bilico
	   * @return riepilogo jsp della pagina di riepilogo
	   */
	@RequestMapping(value="/riepilogo")
	public String showRiepilogoPage(Model model, HttpSession session) {
		
		Utente u = (Utente)session.getAttribute("utente");
		SchedinaFinale s = (SchedinaFinale)session.getAttribute("schedinaCorr");
		
		
		ArrayList<Integer> prova = new ArrayList<Integer>();
		prova.add(100);
		prova.add(100);
		prova.add(200);
		prova.add(-300);
		
		HashSet<String> prova2 = new HashSet<String>();
		prova2.add("'e'");
		prova2.add("'f'");
		prova2.add("'g'");
		prova2.add("'h'");
		prova2.add("'h'");
		
		List<SchedinaFinale> sf = sfs.findByIdUtenteOrderByCodiceDesc(u.getId());
		int n = sf.size();
		
		List<LocalDate> sfd = sfs.findDistinctDataByIdUtente(u.getId());
		ArrayList<String> date = new ArrayList<String>();
		for(LocalDate localData : sfd) {
			String data;
			data = localData.toString();
			date.add("'"+data+"'");
		}
		
		List<Double> vincite = sfs.findWinByUtenteGroupByData(u.getId());
		

		model.addAttribute("utente", u);
		model.addAttribute("schedinaFin", sf);
		model.addAttribute("nScommesse", n);
		model.addAttribute("schedinaCorr", s);
		model.addAttribute("dati", vincite);
		model.addAttribute("date", date);
		
		
		return "riepilogo";
	}
	
	/**
	   * Metodo che reindirizza alla pagina di ricarica. Inserisce sul model l'utente e il suo saldo
	   * @return ricaricasaldo jsp della pagina di ricarica
	   */
	@RequestMapping(value="/ricaricasaldo")
	public String showRicaricaSaldoPage(Model model,HttpSession session) {
		Utente u=(Utente)session.getAttribute("utente");
		double saldo=u.getSaldo();
		
		model.addAttribute("utente",u);
		model.addAttribute("saldo",saldo);
		
		return "ricaricasaldo";
	}
	
	/**
	   * Metodo che effettua il deposito sul saldo dell'utente loggato
	   * @param importoSaldo importo del deposito in input
	   * @return  redirect a homepage
	   */
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
	
	/**
	   * Metodo che reindirizza alla pagina degli utenti. Inserisce sul model la lista
	   * degli utenti sui quali l'amministratore può effettuare operazioni
	   * @return utenti jsp della pagina degli utenti
	   */
	@RequestMapping(value="/utenti", method = RequestMethod.GET)
	public String showUtenti(ModelMap model, HttpSession session){
		
		List<Utente> u = us.findAll();
		model.addAttribute("att", u);
		return "utenti";

	}
	
	/**
	   * Metodo che reindirizza alla homepage dell'amministratore. Inserisce sul model la lista
	   * degli amministratori
	   * @return adminPage jsp della homepage dell'amministratore
	   */
	@RequestMapping(value="/adminPage", method = RequestMethod.GET)
	public String showAdmin(ModelMap model, HttpSession session){
		
		List<Admin> a = as.findAll();
		model.addAttribute("adm", a);
		return "adminPage";
	}
	
	/**
	   * Metodo che reindirizza alla pagina calcio dell'amministratore. Inserisce sul model
	   * la lista delle partite di calcio
	   * @return calcioAdmin jsp della pagina calcio admin
	   */
	@RequestMapping(value="/calcioAdmin", method = RequestMethod.GET)
	public String showCalcioAdmin(ModelMap model, HttpSession session){
		
		List<PartitaCalcio> p = pcs.findAll();
		model.addAttribute("admC", p);
		return "calcioAdmin";
	}
	
	/**
	   * Metodo che reindirizza alla pagina basket dell'amministratore. Inserisce sul model
	   * la lista delle partite di basket
	   * @return basketAdmin jsp della pagina basket admin
	   */
	@RequestMapping(value="/basketAdmin", method = RequestMethod.GET)
	public String showBasketAdmin(ModelMap model, HttpSession session){
		
		List<PartitaBasket> p = pbs.findAll();
		model.addAttribute("admB", p);
		return "basketAdmin";
	}
	
	/**
	   * Metodo che reindirizza alla pagina hockey dell'amministratore. Inserisce sul model
	   * la lista delle partite di hockey
	   * @return hockeyAdmin jsp della pagina hockey admin
	   */
	@RequestMapping(value="/hockeyAdmin", method = RequestMethod.GET)
	public String showHockeyAdmin(ModelMap model, HttpSession session){
		
		List<PartitaHockey> p = phs.findAll();
		model.addAttribute("admH", p);
		return "hockeyAdmin";
	}


}
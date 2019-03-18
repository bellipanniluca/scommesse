package com.scommesse.pugbet.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scommesse.pugbet.model.Schedina;


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
	SchedinaFinaleService sfs;
	
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
	
	@RequestMapping(value="/prova", method = RequestMethod.GET)
	public void showProvaPage(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		response.getWriter().append("provaaaa "+request.getParameter("pa"));
		}
	
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "login";
		}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(ModelMap model, HttpSession session){
		
		session.invalidate();
		
		return "redirect:/";
		}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public String showRegisterPage(ModelMap model){
		return "register";
		}
	@RequestMapping(value="/userPage", method = RequestMethod.GET)
	public String showUserPage(ModelMap model){
		return "userPage";
		}
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
		
	
	@RequestMapping(value="/riepilogo")
	public String showRiepilogoPage(Model model, HttpSession session) {
		
		Utente u = (Utente)session.getAttribute("utente");
		SchedinaFinale s = (SchedinaFinale)session.getAttribute("schedinaCorr");
		
		
		List<SchedinaFinale> sf = sfs.findByIdUtente(u.getId());
		int n = sf.size();
		model.addAttribute("utente", u);
		model.addAttribute("schedinaFin", sf);
		model.addAttribute("nScommesse", n);
		model.addAttribute("schedinaCorr", s);
		
		
		return "riepilogo";
	}
	@RequestMapping(value="/ricaricasaldo")
	public String showRicaricaSaldoPage(Model model,HttpSession session) {
		Utente u=(Utente)session.getAttribute("utente");
		double saldo=u.getSaldo();
		
		model.addAttribute("utente",u);
		model.addAttribute("saldo",saldo);
		
		return "ricaricasaldo";
	}

}
package com.scommesse.pugbet.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerAdmin {
	
	@Autowired
	AdminService as;
	
	@Autowired
	UtenteService us;
	
	@Autowired
	SchedinaFinaleService sfs;
	
	@Autowired 
	PartitaCalcioService pcs;
	
	@RequestMapping(value="/deleteUtente", method=RequestMethod.GET)
	public String deleteById(@RequestParam("id") Integer id, HttpSession session) {

//		AdminService as = (AdminService)session.getAttribute("delete");
		us.deleteById(id);
		System.out.println("Utente cancellato");
		return "redirect:/utenti";
	}
	
	@RequestMapping(value="/deleteAdmin", method=RequestMethod.GET)
	public String deleteByIdAdmin(@RequestParam("idAdmin") Integer idAdmin, HttpSession session) {

		as.deleteById(idAdmin);
		System.out.println("Admin cancellato");
		return "redirect:/adminPage";
	}
	
	@RequestMapping(value="/addAdmin", method=RequestMethod.GET)
    public String addAdmin(@RequestParam("nome") String nome,
							@RequestParam("cognome") String cognome,
							@RequestParam("email") String email,
							@RequestParam("psswrd") String pw,
							@RequestParam("psswrd2") String pw2,
							HttpSession session) {
					
		if(pw.equals(pw2)) {
			if(as.findByEmail(email)==null) {
				Admin a = new Admin();
				a.setNome(nome);
				a.setCognome(cognome);
				a.setEmail(email);
				a.setPsswrd(pw);
				System.out.println(a.getNome()+" "+a.getCognome());
				as.save(a);
				return "redirect:/adminPage";
			}
			else {
				System.out.println("Email presente"); //Cosa fare se è già registrato
				return "redirect:/adminPage";
			}
		}
		else {
			System.out.println("Passwords non esatte");
			return "redirect:/adminPage";
		}
		
}
	
	@RequestMapping(value="/deleteAdminCalcio", method=RequestMethod.GET)
	public String deleteByIdCalcio(@RequestParam("id") Integer id, HttpSession session) {

		pcs.deleteById(id);
		System.out.println("Partita calcio cancellata");
		return "redirect:/calcioAdmin";
	}

	@RequestMapping(value="/addCalcio", method=RequestMethod.GET)
    public String addAdmin(@RequestParam("anno") Integer anno,
							@RequestParam("giorno") Integer giorno,
							@RequestParam("mese") String mese,
							@RequestParam("casa") String casa,
							@RequestParam("trasferta") String trasferta,
							@RequestParam("home") double home,
							@RequestParam("x") double x,
							@RequestParam("away") double away,
							HttpSession session) {
		
		PartitaCalcio pc = new PartitaCalcio();
		pc.setAnno(anno);
		pc.setGiorno(giorno);
		pc.setMese(mese);
		pc.setCasa(casa);
		pc.setTrasferta(trasferta);
		pc.setHome(home);
		pc.setX(x);
		pc.setAway(away);
		System.out.println(pc.getCasa()+" "+pc.getTrasferta());
		pcs.save(pc);
		
		return "redirect:/calcioAdmin";

	}
}

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
	
	@Autowired 
	PartitaBasketService pbs;
	
	@Autowired 
	PartitaHockeyService phs;
	
	@RequestMapping(value="/deleteUtente", method=RequestMethod.GET)
	public String deleteById(@RequestParam("id") Integer id, HttpSession session) {

		us.deleteById(id);
		System.out.println("Utente cancellato");
		sfs.deleteByIdUtente(id);
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
	
	@RequestMapping(value="/deleteAdminBasket", method=RequestMethod.GET)
	public String deleteByIdBasket(@RequestParam("id") Integer id, HttpSession session) {

		pbs.deleteById(id);
		System.out.println("Partita Pallacanestro Cancellata");
		return "redirect:/basketAdmin";
	}
	
	@RequestMapping(value="/addBasket", method=RequestMethod.GET)
    public String addBasket(@RequestParam("anno") Integer anno,
							@RequestParam("giorno") Integer giorno,
							@RequestParam("mese") String mese,
							@RequestParam("casa") String casa,
							@RequestParam("trasferta") String trasferta,
							@RequestParam("home") double home,
							@RequestParam("away") double away,
							HttpSession session) {

		PartitaBasket pb = new PartitaBasket();
		pb.setAnno(anno);
		pb.setGiorno(giorno);
		pb.setMese(mese);
		pb.setCasa(casa);
		pb.setTrasferta(trasferta);
		pb.setHome(home);
		pb.setAway(away);
		
		pbs.save(pb);
		System.out.println("Partita Basket aggiunta");
		
	
		return "redirect:/basketAdmin";
		
	}
	
	@RequestMapping(value="/deleteAdminHockey", method=RequestMethod.GET)
	public String deleteByIdHockey(@RequestParam("id") Integer id, HttpSession session) {

		phs.deleteById(id);
		System.out.println("Partita hockey Cancellata");
		return "redirect:/hockeyAdmin";
	}
	
	@RequestMapping(value="/addHockey", method=RequestMethod.GET)
    public String addHockey(@RequestParam("anno") Integer anno,
							@RequestParam("giorno") Integer giorno,
							@RequestParam("mese") String mese,
							@RequestParam("casa") String casa,
							@RequestParam("trasferta") String trasferta,
							@RequestParam("home") double home,
							@RequestParam("away") double away,
							HttpSession session) {
		
		PartitaHockey ph = new PartitaHockey();
		ph.setAnno(anno);
		ph.setGiorno(giorno);
		ph.setMese(mese);
		ph.setCasa(casa);
		ph.setTrasferta(trasferta);
		ph.setHome(home);
		ph.setAway(away);
		
		phs.save(ph);
		System.out.println("Partita Hockey aggiunta");
		
	
		return "redirect:/hockeyAdmin";
		
	}

}

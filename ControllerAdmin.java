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
	PartitaBasketService pbs;
	
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
	
	

}

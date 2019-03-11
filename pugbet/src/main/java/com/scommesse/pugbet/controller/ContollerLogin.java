package com.scommesse.pugbet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContollerLogin {

		@RequestMapping("/accedi")
		public String Accedi(Model model) {
			
			
			return "index";
		}
}

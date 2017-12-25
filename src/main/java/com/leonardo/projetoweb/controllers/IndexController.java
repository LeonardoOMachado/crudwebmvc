package com.leonardo.projetoweb.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public ModelAndView getIndex() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("url","/cliente");
		return mv;
	}
	
	@GetMapping("/editar/{id}")
	public ModelAndView getCadastro(@PathVariable Long id) {
		
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("url","/cliente/editar/" + id);
		return mv;
	}
	
	@GetMapping("/cadastro")
	public ModelAndView getCadastro() {
		
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("url","/cliente/cadastro/");
		return mv;
	}
	
}
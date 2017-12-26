package com.leonardo.projetoweb.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.leonardo.projetoweb.models.Cliente;
import com.leonardo.projetoweb.service.ClienteService;

@Controller
@RequestMapping("/cliente")
public class ClienteController {

	@Autowired
	ClienteService clienteService; 
	
	@GetMapping
	public ModelAndView getCliente() {
		ModelAndView mv = new ModelAndView("/cliente/cliente");
		mv.addObject("clientes", clienteService.findAll());
		return mv;
	}
	
	@GetMapping("/editar/{id}")
	public ModelAndView getForm(@PathVariable Long id) {
		Cliente cliente = clienteService.findById(id);
		if ( cliente == null )
			return getCliente();
		ModelAndView mv = new ModelAndView("/cliente/form-cliente");
		mv.addObject("cliente", cliente);
		mv.addObject("btnForm" , "Editar");
		return mv;
	}
	
	@GetMapping("/cadastro")
	public ModelAndView getForm() {
		ModelAndView mv = new ModelAndView("/cliente/form-cliente");
		mv.addObject("btnForm" , "Cadastrar");
		return mv;
	}
	
	@GetMapping("/nome/{nome}")
	public ModelAndView getCliente(@PathVariable String nome) {
		List<Cliente> clientes = clienteService.findByNome(nome);
		ModelAndView mv = new ModelAndView("/cliente/cliente");
		mv.addObject("clientes", clientes);
		return mv;
	}
	
}



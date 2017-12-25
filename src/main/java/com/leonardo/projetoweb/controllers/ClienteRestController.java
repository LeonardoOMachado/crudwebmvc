package com.leonardo.projetoweb.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.leonardo.projetoweb.models.Cliente;
import com.leonardo.projetoweb.service.ClienteService;

@RestController
@RequestMapping("cliente-api")
public class ClienteRestController {

	@Autowired
	ClienteService clienteService;
	
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> findAll(){
		List<Cliente> clientes = clienteService.findAll();
		if ( !clientes.isEmpty() )
			return new ResponseEntity<>(clientes,HttpStatus.OK);
		return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	}
	
	@PostMapping(consumes=MediaType.APPLICATION_JSON_UTF8_VALUE , produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> save(@RequestBody Cliente cliente) {
		return new ResponseEntity<>(clienteService.save(cliente), HttpStatus.CREATED);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<?> delete(@PathVariable("id") Long id){
		Cliente cliente = clienteService.findById(id);
		if ( cliente == null )
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		clienteService.remove(id);
		return new ResponseEntity<>(cliente,HttpStatus.OK);
	}
	
	@GetMapping(value = "/{id}" , produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> findById(@PathVariable("id") Long id){
		Cliente cliente = clienteService.findById(id);
		if (cliente != null )
			return new ResponseEntity<Cliente>(cliente ,HttpStatus.OK);
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
	
	@GetMapping(value = "/nome/{nome}" , produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<?> findByNome(@PathVariable("nome") String nome){
		List<Cliente> clientes = clienteService.findByNome(nome);
		if (!clientes.isEmpty() )
			return new ResponseEntity<>(clientes, HttpStatus.OK);
		return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	}
	
	@DeleteMapping("/deletar-todos")
	public ResponseEntity<?> delete(){
		List<Cliente> clientes = clienteService.findAll();
		if ( clientes.isEmpty() )
			return new ResponseEntity<>(HttpStatus.NO_CONTENT);
		clienteService.removeAll();
		return new ResponseEntity<>(HttpStatus.OK);
	}
}

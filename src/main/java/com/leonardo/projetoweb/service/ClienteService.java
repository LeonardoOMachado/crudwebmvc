package com.leonardo.projetoweb.service;

import java.util.List;

import com.leonardo.projetoweb.models.Cliente;

public interface ClienteService {

	
	public Cliente save(Cliente cliente);
	public List<Cliente> findAll();
	public void remove(Long id);
	public Cliente findById(Long id);
	public List<Cliente> findByNome(String nome);
	public void removeAll();
}

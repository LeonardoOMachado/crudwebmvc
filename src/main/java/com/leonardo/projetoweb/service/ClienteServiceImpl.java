package com.leonardo.projetoweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.leonardo.projetoweb.models.Cliente;
import com.leonardo.projetoweb.repository.ClienteRepository;

@Service
public class ClienteServiceImpl implements ClienteService{

	@Autowired
	ClienteRepository clienteRepository;
	
	@Override
	public Cliente save(Cliente cliente) {
		// TODO Auto-generated method stub
		return clienteRepository.save(cliente);
	}

	@Override
	public List<Cliente> findAll() {
		// TODO Auto-generated method stub
		return clienteRepository.findAll();
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		clienteRepository.delete(id);
	}

	@Override
	public Cliente findById(Long id) {
		// TODO Auto-generated method stub
		return clienteRepository.findOne(id);
	}
	
	@Override
	public List<Cliente> findByNome(String nome) {
		return clienteRepository.findByNome(nome);
	}
	
	@Override
	public void removeAll() {
		clienteRepository.deleteAll();
	}

}

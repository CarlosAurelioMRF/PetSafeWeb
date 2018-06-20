package br.com.carlosaurelio.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import br.com.carlosaurelio.model.Cliente;

public class ClienteController {

	private EntityManagerFactory factory = Persistence.createEntityManagerFactory("petsafe");
	private EntityManager manager = factory.createEntityManager();

	private Cliente clienteSelecionado;

	@SuppressWarnings("unchecked")
	public List<Cliente> getListaClientes() {
		Query objQry = manager.createQuery("from Cliente");
		return objQry.getResultList();
	}

	public void setClienteSelecionado(Cliente clienteSelecionado) {
		this.clienteSelecionado = clienteSelecionado;
	}

	public Cliente findById(int codigoCliente) {
		return manager.find(Cliente.class, codigoCliente);
	}

	public boolean editar(Cliente cliente) {
		try {
			manager.getTransaction().begin();
			manager.merge(cliente);
			manager.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean inserir(Cliente cliente) {
		try {
			manager.getTransaction().begin();
			manager.persist(cliente);
			manager.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}	

	public boolean deletar(int codigoCliente) {			
		try {
			clienteSelecionado = manager.find(Cliente.class, codigoCliente);
			clienteSelecionado.setStatus("I");
			if (clienteSelecionado != null) {
	            manager.getTransaction().begin();
	            manager.merge(clienteSelecionado);
	            manager.getTransaction().commit();
	        }
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public void ativar(int codigoCliente) {
		try {
			clienteSelecionado = manager.find(Cliente.class, codigoCliente);
			clienteSelecionado.setStatus("A");
			if (clienteSelecionado != null) {
	            manager.getTransaction().begin();
	            manager.merge(clienteSelecionado);
	            manager.getTransaction().commit();
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}



}

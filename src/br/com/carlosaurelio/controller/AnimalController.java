package br.com.carlosaurelio.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.carlosaurelio.model.Animal;

public class AnimalController {
	
	private EntityManagerFactory factory = Persistence.createEntityManagerFactory("petsafe");
	private EntityManager manager = factory.createEntityManager();
	private Animal animalSelecionado;	
	
	public void setAnimalSelecionado(Animal animalSelecionado) {
		this.animalSelecionado = animalSelecionado;
	}	
	
	@SuppressWarnings("unchecked")
	public List<Animal> getListaAnimais() {
		Query objQry = manager.createQuery("from Animal");
		return objQry.getResultList();
	}

	public Animal findById(int codigoAnimal) {
		return manager.find(Animal.class, codigoAnimal);
	}
	
	public void editar(Animal animal) {
		try {
			manager.getTransaction().begin();
			manager.merge(animal);
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void inserir(Animal animal) {
		try {
			manager.getTransaction().begin();
			manager.persist(animal);
			manager.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	

	public void deletar(int codigoAnimal) {			
		try {
			animalSelecionado = manager.find(Animal.class, codigoAnimal);
			if (animalSelecionado != null) {
	            manager.getTransaction().begin();
	            manager.remove(animalSelecionado);
	            manager.getTransaction().commit();
	        }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	
}

package br.com.carlosaurelio.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.persistence.Query;

import br.com.carlosaurelio.model.Usuario;

public class UsuarioController {

    private EntityManagerFactory factory = Persistence.createEntityManagerFactory("petsafe");
    private EntityManager manager = factory.createEntityManager();

    public Usuario getUsuario(String nomeUsuario) {
    	manager.getTransaction().begin();
        try {
            Usuario usuario = (Usuario) manager.createQuery("SELECT u from Usuario u where u.nomeUsuario = :name").setParameter("name", nomeUsuario).getSingleResult();
            manager.getTransaction().commit();
            return usuario;
        } catch (NoResultException e) {
        	manager.getTransaction().rollback();
            return null;
        }
    }
   
    public boolean inserirUsuario(Usuario usuario) {
        try {
            manager.merge(usuario);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deletarUsuario(Usuario usuario) {
        try {
            manager.remove(usuario);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

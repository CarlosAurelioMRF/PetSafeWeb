package br.com.carlosaurelio.model;

import java.io.Serializable;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table (name="usuarios")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
    @Column(name = "id", nullable = false, unique = true)
    private int id;
    @Column(name = "name", nullable = false)
    private String nome;
    @Column(name = "email", nullable = false, unique = true)
    private String email;    
    @Column(name = "userName", nullable = false, unique = true)
    private String nomeUsuario;
    @Column(name = "password", nullable = false, unique = false)
    private String senha;
    @Column(name = "lastAccess", unique = true)
    @Temporal(TemporalType.DATE)
    private Date ultimoAcesso;

    public String getNome(){
    	return nome;
    }
    
    public void setNome(String nome) {
    	this.nome = nome;
    }
    
    public String getEmail(){
    	return email;
    }
    
    public void setEmail(String email) {
    	this.email = email;
    }    
    
    public String getNomeUsuario() {
        return nomeUsuario;
    }

    public void setNomeUsuario(String nomeUsuario) {
        this.nomeUsuario = nomeUsuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public Date getUltimoAcesso() {
        return ultimoAcesso;
    }

    public void setUltimoAcesso(Date ultimoAcesso) {
        this.ultimoAcesso = ultimoAcesso;
    }
}

package com.release.models;

import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Utente{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String username;
	private String email;
	private String password;
	private String immagine;
	
	public Utente() {
		super();
	}

	
	public Utente(String username, String email, String password,  String immagine) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;
		this.immagine = immagine;
	}


	public Utente(String username, String email, String password) {
		super();
		this.username = username;
		this.email = email;
		this.password = password;	
	}
	

	public Utente(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	
	public String getImmagine() {
		return immagine;
	}
	public void setImmagine(String immagine) {
		this.immagine = immagine;
	}


	@Override
	public String toString() {
		return "Utente [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash( id, username, email, password);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Utente other = (Utente) obj;
		return Objects.equals(id, other.id) && Objects.equals(username, other.username)
				&& Objects.equals(email, other.email) && Objects.equals(password, other.password) ;
	}
}

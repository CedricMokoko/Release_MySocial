package com.release.dao;

import java.util.List;

import javax.persistence.EntityManager;

import com.release.models.Utente;

public class UtenteDao implements InterfaceDao <Utente> {
	
	private EntityManager manager;

	public UtenteDao(EntityManager manager) {
		super();
		this.manager = manager;
	}

	@Override
	public Utente create(Utente ref) {
		manager.persist(ref);
		return ref;
	}

	@Override
	public List<Utente> retrieve() {
		return manager.createQuery("select u from Utente u", Utente.class).getResultList();
	}

	@Override
	public Utente update(Utente ref) {
		manager.persist(ref);
		return ref;
	}

	@Override
	public void delete(Utente ref) {
		manager.remove(ref);	
	}
	
	/*Metodi per i controlli dei form Login e Register*/
	
	/*Utente Esistente?*/
	
	public List<Utente> findByUsernameRegisterForm(String username){
		return manager.createQuery("SELECT u FROM Utente u WHERE u.username=:byUsername", Utente.class)
				.setParameter("byUsername",username).getResultList();
	}
	
	public List<Utente> findByEmailRegisterForm(String email){
		return manager.createQuery("SELECT u FROM Utente u WHERE u.email=:byEmail", Utente.class)
				.setParameter("byEmail", email).getResultList();
	}
	
	public Utente findByEmailLoginForm(String email){
		return manager.createQuery("SELECT u FROM Utente u WHERE u.email=:byEmail", Utente.class)
				.setParameter("byEmail", email).getSingleResult();
	}
	
}

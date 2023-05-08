package com.release.businessLogic;

import java.util.List;  

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;

import com.release.dao.UtenteDao;
import com.release.exception.EmailEsistenteException;
import com.release.exception.EmailInesistenteException;
import com.release.exception.PasswordErrataException;
import com.release.exception.PersonaEsistenteException;
import com.release.models.Utente;
import com.release.utils.PasswordHashing;
import com.release.utils.PasswordManager;

public class BusinessLogic {
	private EntityManager manager;
	private UtenteDao utenteDao;
	
	public BusinessLogic (EntityManager manager,  UtenteDao utenteDao) {
		super ();
		this.manager=manager;
		this.utenteDao=utenteDao;
	}
	
 /*Da qui parte la mia implementazione*/
	
	public void inizializzazione(String username, String email, String password) {
		try {
			manager.getTransaction().begin();
			
			String hashedPassword = PasswordHashing.hashPassword(password);
			Utente utente1 = new Utente (username, email, hashedPassword);
			utenteDao.create(utente1);
			
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			throw e;
		}
	}
	
	public void registerUser(String username, String email, String password) throws Exception{
		try {
			manager.getTransaction().begin();
			
			List<Utente> utentiEmail = utenteDao.findByEmailRegisterForm(email);
			if(utentiEmail.size()>0) {
				throw new EmailEsistenteException("Email "+email+" già esistente", null);
			}
			List<Utente> utentiUsername =utenteDao.findByUsernameRegisterForm(username);
			if(utentiUsername.size()>0) {
				throw new PersonaEsistenteException("Username "+username+" già assegnato", null);
			}
			Utente utente = new Utente (username, email, password);
			utenteDao.create(utente); 
			
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			throw e;
		}
	}
	
	public void controlloCampiRegisterForm(String username, String email, String password) {
		if(username==null || email==null || password==null ) {
			throw new IllegalArgumentException();
		}
	}
	
	public void controlloCampiLoginForm(String email, String password) {
		if(email==null || password==null ) {
			throw new IllegalArgumentException();
		}
	}
	
	public Utente controlloLogin(String email, String password) throws Exception {
		Utente utente = null;
		
		try {
			manager.getTransaction().begin();
			utente = utenteDao.findByEmailLoginForm(email);
			if(!utente.getPassword().equals(password))
				throw new PasswordErrataException("Password e/o email sbagliata!", null);		
			manager.getTransaction().commit();
		} 
		catch(PasswordErrataException e) {
			manager.getTransaction().rollback();
			throw e;	
		}
		catch (NoResultException e) {
			manager.getTransaction().rollback();
			throw new EmailInesistenteException("Password e/o email sbagliata!", null);
		}
		catch (Exception e) {
			manager.getTransaction().rollback();
			throw e;
		} 
		return utente;
	}
	
}

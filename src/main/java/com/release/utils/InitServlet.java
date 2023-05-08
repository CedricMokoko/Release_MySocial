package com.release.utils;

import jakarta.servlet.ServletException;  
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.release.businessLogic.BusinessLogic;
import com.release.dao.UtenteDao;

@SuppressWarnings("serial")
@WebServlet(value= "/init" , loadOnStartup = 1 )
public class InitServlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException{
		EntityManager manager = null;
		try {
			EntityManagerFactory factory = Persistence.createEntityManagerFactory("Release");
			manager = factory.createEntityManager();
			
			UtenteDao utenteDao = new UtenteDao(manager);
			BusinessLogic businessLogic =new BusinessLogic(manager, utenteDao);
			
			getServletContext().setAttribute("BL",businessLogic);
			System.out.println("Release");
			businessLogic.inizializzazione("cédric", "cedricmokoko@gmail.com", "MBcv07451145.");	
		}
		catch (Exception e) {
			e.printStackTrace();
			throw e;
		}	
	}	
}

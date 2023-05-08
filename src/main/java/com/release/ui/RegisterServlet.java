package com.release.ui;

import jakarta.servlet.ServletException;  

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.release.businessLogic.BusinessLogic;
import com.release.exception.EmailEsistenteException;
import com.release.exception.PersonaEsistenteException;
import com.release.utils.PasswordHashing;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		String username=null;
		String email=null;
		String password=null;
		String confirmPass=null;
		try {
			BusinessLogic businessLogic = (BusinessLogic) getServletContext().getAttribute("BL");
			username =request.getParameter("u");
			email =request.getParameter("e");
			password =request.getParameter("p");
			confirmPass =request.getParameter("cp");
			businessLogic.controlloCampiRegisterForm(username, email, password);
						
			String [] lettere= username.trim().split(" ");
			if(lettere.length>1) {
				request.setAttribute("e", email);
				request.setAttribute("p", password);
				request.setAttribute("cp", confirmPass);
				request.setAttribute("MESSAGE", "Le username non deve contenere spazi.");
				request.getRequestDispatcher("/Jsp/register.jsp").forward(request, response);
				return;
			}
			username.trim().toLowerCase();
			email.trim().toLowerCase();
			password.trim();
			confirmPass.trim();
			
			if(!password.equals(confirmPass)) {
				request.setAttribute("u", username);
				request.setAttribute("e", email);
				request.setAttribute("p", password);
				request.setAttribute("MESSAGE", "La password di conferma non coincide.");
				request.getRequestDispatcher("/Jsp/register.jsp").forward(request, response);	
			}
			else {
			    String hashedPassword = PasswordHashing.hashPassword(password);
				businessLogic.registerUser(username, email, hashedPassword);
				request.setAttribute("MESSAGE", "La sua registrazione è andata a buon fine. Welcome to RE_LEASE!");
				request.getRequestDispatcher("/Jsp/message.jsp").forward(request, response);
			}	
		}
		catch(IllegalArgumentException e){
			e.printStackTrace();
			request.getRequestDispatcher("/Jsp/register.jsp").forward(request, response);
	
		}
		catch (PersonaEsistenteException e) {
			e.printStackTrace();
			request.setAttribute("e", email);
			request.setAttribute("p", password);
			request.setAttribute("cp", confirmPass);
			request.setAttribute("MESSAGE", e.getMessage());
			request.getRequestDispatcher("/Jsp/register.jsp").forward(request, response);	
		}
		catch (EmailEsistenteException e) {
			e.printStackTrace();
			request.setAttribute("u", username);
			request.setAttribute("p", password);
			request.setAttribute("cp", confirmPass);
			request.setAttribute("MESSAGE", e.getMessage());
			request.getRequestDispatcher("/Jsp/register.jsp").forward(request, response);	
		}
		catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("MESSAGE", "\"La sua registrazione non è andata a buon fine. La preghiamo di riprovare tra qualche minuto. Grazie."); 
		}
     }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);			
	}
}

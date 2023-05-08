package com.release.ui;

import jakarta.servlet.ServletException;  
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.release.businessLogic.BusinessLogic;
import com.release.exception.EmailInesistenteException;
import com.release.exception.PasswordErrataException;
import com.release.models.Utente;
import com.release.utils.PasswordHashing;
import com.release.utils.PasswordManager;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String email = null;
		String password = null;
		try {
			HttpSession session = request.getSession(true);
			if(session.getAttribute("utente")!=null) {	
				request.getRequestDispatcher("/Jsp/Private/homepage.jsp").forward(request, response);
				return;
			}
			BusinessLogic businessLogic = (BusinessLogic) getServletContext().getAttribute("BL");
			email=request.getParameter("e");
			password=request.getParameter("p");
			businessLogic.controlloCampiLoginForm(email, password);
			
			email.trim().toLowerCase();
			password.trim();	
		
			// Vérifie si les cookies existent dans la demande.
            Cookie emailCookie = null;
            Cookie passwordCookie = null;
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("ce")) {
                    	cookie.setMaxAge(0);
                        emailCookie = cookie;
                    }
                    if (cookie.getName().equals("cp")) {
                    	cookie.setMaxAge(0);
                        passwordCookie = cookie;
                    }
                }
            }
            // Si les cookies ne sont pas trouvés, je fais de nouveaux cookies avec des noms différents.
            if (emailCookie == null || passwordCookie == null) {
                Cookie newEmailCookie = new Cookie("ce", email);
                Cookie newPasswordCookie = new Cookie("cp", password);
                newEmailCookie.setMaxAge(-1);
                newPasswordCookie.setMaxAge(-1);
                response.addCookie(newEmailCookie);
                response.addCookie(newPasswordCookie);
            }else {
                // Sinon, j'utilise les cookies trouvés dans la demande.
                request.setAttribute("ce", emailCookie.getValue());
                request.setAttribute("cp", passwordCookie.getValue());
            }
           
           String hashedPasswordLogin = PasswordHashing.hashPassword(password);
           Utente u = businessLogic.controlloLogin(email, hashedPasswordLogin);
           if(PasswordManager.verifyPassword(password, u.getPassword())) {     
        	   session.setAttribute("utente", u); 
        	   request.getRequestDispatcher("/Jsp/Private/homepage.jsp").forward(request, response);	      
           }
           
		}
		catch(IllegalArgumentException e) {
			e.printStackTrace();
			request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response);
		}
		catch (PasswordErrataException e) {
			request.setAttribute("e", email);
			request.setAttribute("p", password);
			e.printStackTrace();
			request.setAttribute("MESSAGE", e.getMessage());
			request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response);
		}
		catch (EmailInesistenteException e) {
			e.printStackTrace();
			request.setAttribute("e", email);
			request.setAttribute("p", password);
			request.setAttribute("MESSAGE", e.getMessage());
			request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response);
		}
		catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("MESSAGE", "Spiacenti, non siamo riusciti a stabilire la connession. La preghiamo di riprovare tra qualche minuto");
			request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response);	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
}

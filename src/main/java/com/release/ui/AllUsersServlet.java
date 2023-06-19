package com.release.ui;

import java.io.IOException; 
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/users")
public class AllUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession(true);
			if(session.getAttribute("utente")!=null) {	
				request.getRequestDispatcher("/Jsp/Private/users.jsp").forward(request, response);
				return;
			}else {
				request.setAttribute("MESSAGE", "Procedere al login.");
				request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response);		
			}
		}catch (Exception e) {
			e.printStackTrace();	
		}	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

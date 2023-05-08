package com.release.filter;

import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

import com.release.models.Utente;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;


@WebFilter(urlPatterns = {"/Jsp/Private/*"})
public class LoginFilter extends HttpFilter {
	
	private static final long serialVersionUID = 1L;
       
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		Utente u = (Utente) req.getSession().getAttribute("utente");
		if (req.getMethod().equals("GET")||u!=null) {
			chain.doFilter(request, response);
		} else {
			request.getRequestDispatcher("/Jsp/login.jsp").forward(request, response); 
		}		
	}
}

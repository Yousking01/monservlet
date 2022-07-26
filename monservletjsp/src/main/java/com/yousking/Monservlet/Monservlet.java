package com.yousking.Monservlet;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class Monservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Monservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}

	
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String pseudo = request.getParameter("pseudo");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repeat = request.getParameter("repeat");
		
		
		
		request.setAttribute("pseudo", pseudo);
		request.setAttribute("prenom", prenom);
		request.setAttribute("nom", nom);
		request.setAttribute("email", email);
		request.setAttribute("password", password);
		request.setAttribute("repeat", repeat);
		
		HttpSession session = request.getSession();
		session.setAttribute("nom", nom);
		session.setAttribute("prenom", prenom);
		session.setAttribute("pseudo", pseudo);
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		
		Utuilisateur user = new Utuilisateur(nom, prenom, pseudo, email, password);
		
		List<Utuilisateur> liste = (ArrayList<Utuilisateur>) session.getAttribute("liste");
		if(liste == null) {
			liste = new ArrayList<>();
			}
		
		liste.add(user);
		System.out.println(liste.get(0).getPrenom());
		session.setAttribute("liste", liste);
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/Accueil.jsp").forward(request, response);
		
	}	
	}
		



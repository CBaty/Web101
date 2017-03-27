package com.sopra.dev;

import java.io.IOException;
import java.util.Date;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.heroes.Hero;

public class ViewHelper {

	public static void displayWelcomeView(Utilisateur newUser, Date dateConnection, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setAttribute("nomUtilisateur", newUser);
		request.setAttribute("dateConnection", dateConnection);
		request.getRequestDispatcher("/WEB-INF/welcome.jsp").forward(request, response);

	}
	public static void displayLoginView( HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.getRequestDispatcher("/WEB-INF/loginform.jsp").forward(request, response);
		
	}
	public static void displayHeroesView( Set<Hero> heroes, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setAttribute("heroesSet", heroes);
		request.getRequestDispatcher("/WEB-INF/showHeroes.jsp").forward(request, response);
		
	}
	
}

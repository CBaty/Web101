package com.sopra.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.dev.ViewHelper;
import com.sopra.heroes.Hero;
import com.sopra.heroes.HeroService;

@WebServlet("/heroes.html")
public class HeroServlet extends HttpServlet {
	

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HeroService service = new HeroService();
		//if ("showHeroes".equals(request.getParameter("heroes"))) {
			Set<Hero> heroesSet = service.findAll();
			ViewHelper.displayHeroesView(heroesSet, request, response);
			
			
		//}
	}

}

package com.sopra.servlet;

import java.io.IOException;
import java.util.Date;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sopra.dev.Constantes;
import com.sopra.dev.Utilisateur;
import com.sopra.dev.ViewHelper;

@WebServlet("/index.html")
public class IndexServlet extends HttpServlet {
	/*
	 * @Override protected void doGet(HttpServletRequest request,
	 * HttpServletResponse response) throws ServletException, IOException {
	 * //consulter le paramètre 'utilisateur' fourni (ou pas) dans la requête
	 * HTTP qui a déclenché cette méthode
	 * 
	 * String utilisateur = request.getParameter("utilisateur");
	 * 
	 * response.getOutputStream().println("<html>"
	 * +"<head><title>Super Appli</title></head>" +"<body>" +"Bonjour Cher " +
	 * utilisateur + "</br>" +"Corps du Document<br/>"+ new Date() +
	 * "</body></html>"); }
	 */

	protected void doRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// executer un traitement et passer des informations à la vue JSP.

		Utilisateur newUser = (Utilisateur) request.getSession().getAttribute("NOM_USER");

		request.setAttribute("message", "");
		if ("logout".equals(request.getParameter("action"))) {
			request.getSession().invalidate();
			newUser = null;

			// TODO faire le message de déconnexion
			// <h2>Vous êtes maintenant déconnecté</h2>
			request.setAttribute("message", "Vous êtes maintenant déconnecté");

		}
		if (newUser == null) {
			String paramFirstName = request.getParameter(Constantes.LOGIN_FOR_FIRST_NAME_PARAMETER_NAME);
			String paramLastName = request.getParameter(Constantes.LOGIN_FOR_LAST_NAME_PARAMETER_NAME);
			if (paramFirstName == null || paramFirstName.isEmpty() || paramLastName == null) {
				// afficher loginform.jsp
				ViewHelper.displayLoginView( request, response);
				return;
			}

			// enregistrer la session
			newUser = new Utilisateur(paramFirstName, paramLastName, new Date());
			request.getSession().setAttribute("NOM_USER", newUser);
		}
		if (newUser != null) {
			// afficher welcome.jsp
			// attention ne pas oublier l'attribut "Utilisateur"
			ViewHelper.displayWelcomeView(newUser,newUser.getLastConnectionDate(), request, response);		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doRequest(request, response);
	}
}

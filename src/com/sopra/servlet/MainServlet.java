package com.sopra.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/form.jsp")
public class MainServlet  extends HttpServlet	{
	
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name = request.getParameter("name");	
	String surname = request.getParameter("surname");	
	
	response.getOutputStream().println("<html><head><title>Main</title></head><body>Hello "
			+ name +" "+ surname
			+"</body></html>");
}
}

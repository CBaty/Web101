<%@page import="com.sopra.dev.Constantes"%>
<%@page import="com.sopra.dev.CookiesHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
<%
for (int i=1; i<5;i++){%>
	h<%=i %>{
	font size: <%= (6-1)*4%>pt;
	}
<%	
}
%>
</style>


<body>
<h1>qsdqsdqsdqs</h1>
<h2>qsdqsdqsdqsdsq</h2>
<h3>qdqsdqskdqlkejaze</h3>
<% 
	String nomUtilisateur = (String)session.getAttribute("NOM_USER");
	if ("logout".equals(request.getParameter("action"))){
		session.invalidate();
		nomUtilisateur = null;
		%>
		<h2>Vous êtes maintenant déconnecté</h2> <%
	}
	
	if (nomUtilisateur == null){
		String paramUtilisateur = request.getParameter(Constantes.LOGIN_FOR_FIRST_NAME_PARAMETER_NAME);
		if(paramUtilisateur == null){
			// Afficher le formulaire
			%>
				<form method="post">
	
			<label>Name : <input type="text" placeholder="Name"
				name="<%=Constantes.LOGIN_FOR_NAME_PARAMETER_NAME%>" required="required"></label> 
			<label>Surname : <input type="text" placeholder="Surname"
				name="Surname"></label> 	
	
			<button type="reset">Reset Form</button>
			<button type="submit">Valider</button>
	
		</form> 
		<%
		}else {
			// enregistrer la session
			session.setAttribute("NOM_USER", paramUtilisateur);
			nomUtilisateur = paramUtilisateur;
		}
	}
	if (nomUtilisateur != null) {
	// AFFICHER LE BONJOUR%>
		Bonjour cher <%=nomUtilisateur %>
		<br/><br/><br/><br/><br/><br/>
		<form method="POST">
		<input type= "hidden" name= "action" value= "logout"/>
		<button type= "submit" >Se déconnecter</button>
		</form>
		
	<%
	}
%>	
		
</body>
</html>
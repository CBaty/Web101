<%@page import="com.sopra.dev.Constantes"%>
<%@page import="com.sopra.dev.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>

		Bonjour cher ${ utilisteur.fullName }
		<br/><br/><br/><br/><br/><br/>
		<form method="POST">
		<input type= "hidden" name= "action" value= "logout"/>
		<button type= "submit" >Se déconnecter</button>
		</br></br></br>
		</form>
		<p>Vous vous êtes connecté à cette date : </br>
		${ dateConnection }
		</br></br></br>
		</p>
		</br></br></br></br>
		<form method="GET">
		<input type= "hidden" name= "heroes" value= "showHeroes"/>
		<button type= "submit" >Show Heroes</button>
		</form>
		
		
</body>
</html>
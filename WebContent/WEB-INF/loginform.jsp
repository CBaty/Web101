<%@page import="com.sopra.dev.Constantes"%>
<%@page import="com.sopra.dev.CookiesHelper"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connection</title>
</head>

<body>
	<h2><%= request.getAttribute("message") %></h2>
				<form method="post">
	
			<label>First Name : <input type="text" placeholder="FirstName"
				name="<%=Constantes.LOGIN_FOR_FIRST_NAME_PARAMETER_NAME%>" required="required"></label> 
			<label>Last Name : <input type="text" placeholder="LastName"
				name="<%=Constantes.LOGIN_FOR_LAST_NAME_PARAMETER_NAME%>"></label> 	
	
			<button type="reset">Reset Form</button>
			<button type="submit">Se connecter</button>
	
		</form> 
		</br></br></br></br>
		<form method="GET">
		<input type= "hidden" name= "heroes" value= "showHeroes"/>
		<button type= "submit" >Show Heroes</button>
		</form>
</body>
</html>
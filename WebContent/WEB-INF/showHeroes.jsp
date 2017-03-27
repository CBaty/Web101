<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="table.css">

<title>Heroes list</title>
</head>
<body>
	<header>
	<div class="homephoto">
		<center>
			<img src="AvengersHome5.png"
				style="width: 500px; height: 400px;">
		</center>
	</div>
	</header>

	<table>
		<th>Heros</th>
		<th>Sex</th>
		<th>Number of likes</th>
		<th>Number of dislikes</th>
		<th>Picture</th>
		<c:forEach var="hero" items="${heroesSet}">
			<tr>
				<td>${hero.name}</td>
				<td>${hero.sex}</td>
				<td>${hero.likes}</td>
				<td>${hero.dislikes}</td>
				<td><img src="${hero.getPictureString()}" alt="heroesPicture"
					style="height: 100px;">
			</tr>
		</c:forEach>
	</table>
	
	<main>

		<div class="menu1">
			<div class="menu">
				<div>
					<p>Heroes</p>
				</div>
				<div>
					<p>Movies</p>
				</div>
				<div>
					<p>News</p>
				</div>
				<div>
					<p>Shop</p>
				</div>
				<div>
					<p>Marvel</p>
				</div>
				<div>
					<p>Enfants</p>
				</div>
				<div>
					<p>Forum</p>
				</div>
				<div>
					<p>BD</p>
				</div>
			</div>
		</div>
	</main>
	<footer>
	Information taken from <a href="http://marvel.com/comics">Marvel
</footer>
</body>
</html>
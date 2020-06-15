<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<link
	href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>Virtualities - Segmentos</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#">LOGO AQUI</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item"><a class="nav-link"
					href="${contextPath}/bot">Meus Robôs</a></li>
			</ul>
		</div>
	</nav>
	<form:form class="container">
		<div class="row">
			<div class="col-sm-12">
				<ul class="list-group list-group-flush"
					style="max-height: 500px; overflow-y: auto;">
					
				</ul>
			</div>
		</div>
	</form:form>
</body>
</html>
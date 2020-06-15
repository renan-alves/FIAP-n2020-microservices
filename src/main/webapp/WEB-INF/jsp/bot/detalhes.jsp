<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<link
	href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>Virtualities - Detalhes</title>

<c:set value="${pageContext.request.contextPath}" var="contextPath" />

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #74B555">
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#">LOGO AQUI</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item"><a class="nav-link" href="${contextPath}/bot">Meus Robôs</a></li>
			</ul>
		</div>
	</nav>
	<div class="container" style="margin: 15px auto;">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">${bot.name}</h5>
					</div>
					<ul class="list-group list-group-flush">
						<li class="list-group-item"><h6>Mensagem de boas vindas:</h6><p class="ml-4">${bot.welcome_msg}</p></li>
						<li class="list-group-item"><h6>Mensagem de despedida:</h6><p class="ml-4">${bot.farewell_msg}</p></li>
						<li class="list-group-item"><h6>Resposta padrão:</h6><p class="ml-4">${bot.default_answer}</p></li>
						<li class="list-group-item"><h6>Tempo máximo de inatividade:</h6><p class="ml-4">${bot.downtime} Min</p></li>			
					</ul>
					<div class="card-body">
						<a href="${contextPath}/bot" class="card-link">Voltar</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
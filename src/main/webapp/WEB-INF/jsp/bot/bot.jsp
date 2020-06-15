<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<link
	href="https://unpkg.com/bootstrap@4.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<head>
<meta charset="ISO-8859-1">
<title>Virtualities - Home</title>

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
	
	<c:if test="${not empty messages}">
		<h3 class="alert alert-warning text-center">${messages}</h3>
	</c:if>

	<div class="container">
		<a class="btn btn-primary btn-lg"
			href="${contextPath}/bot/form?page=novo-robo"
			style="margin: 15px 0;">Novo Robô</a>
		<div class="row">
			<div class="card-deck" style="justify-content: space-between">
				<c:forEach items="${listaBots}" var="item">
					<div class="col-sm-12 col-md-4">
						<div class="p-2 mb-4 card border-info" style="width: 18rem;">
							<div class="card-body">
								<h5 class="card-title text-center">${item.name}</h5>
								<p class="card-text text-center">Segmentos</p>
							</div>
							<ul class="list-group list-group-flush"
								style="height: 150px; overflow-y: auto;">
								<c:if test="${empty item.segment}">
									<c:set var="isEmpty" value="true"/>
								</c:if>
								
								<c:choose>
									<c:when test="${isEmpty}">
										<li class="list-group-item">Nenhum segmento cadastrado</li>
										<c:set var="isEmpty" value="false"/>
									</c:when>
									<c:when test="${not isEmpty}">
										<c:forEach items="${item.segment}" var="listItem">
											<li class="list-group-item">${listItem.name}</li>
										</c:forEach>
									</c:when>
								</c:choose>
							</ul>
							<form:form class="card-body" action="${contextPath}/bot/${item.id_bot}" method="delete" style="display: flex; flex-derection: row; justify-content: space-around; align-items: center">
								<a href="${contextPath}/bot/${item.id_bot}" class="card-link">Detalhes</a>
								<a href="${contextPath}/bot/form?page=editar&id=${item.id_bot}" class="card-link m-0">Editar</a> 
								<input type="submit" value="Excluir" class="btn btn-outline-primary" />
							</form:form>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>
</body>
</html>
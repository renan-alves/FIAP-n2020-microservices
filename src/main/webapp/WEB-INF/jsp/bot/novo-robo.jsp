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
<title>Virtualities - Novo Robô</title>

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
	<form:form modelAttribute="botModel" action="${contextPath}/bot"
		method="post" class="container" style="margin: 15px auto;">
		<div class="row">
			<div class="col-sm-12">
				<div class="form-group">
					<label class="control-label" for="nome-label">Nome:</label>
					<form:input type="text" class="form-control" id="nome-label"
						path="name" />
					<font color="red"><form:errors path="name" /></font><br />
				</div>
				<div class="form-group">
					<label for="welcome-label">Mensagem de boas vindas:</label>
					<form:input type="text" class="form-control" id="welcome-label"
						path="welcome_msg" />
					<font color="red"><form:errors path="welcome_msg" /></font><br />
				</div>
				<div class="form-group">
					<label for="farewell-label">Mensagem de despedida:</label>
					<form:input type="text" class="form-control" id="farewell-label"
						path="farewell_msg" />
					<font color="red"><form:errors path="farewell_msg" /></font><br />
				</div>
				<div class="form-group">
					<label for="default-label">Resposta padrão:</label>
					<form:input type="text" class="form-control" id="default-label"
						path="default_answer" />
					<font color="red"><form:errors path="default_answer" /></font><br />
				</div>
				<div class="form-group">
					<label for="downtime-label">Tempo máximo de inatividade:</label>
					<form:input type="number" class="form-control" id="downtime-label"
						path="downtime" />
					<font color="red"><form:errors path="downtime" /></font><br />
				</div>
				<div class="form-group">
					<ul class="list-group" style="max-height: 300px; overflow-y: auto;">
						<c:forEach items="${segmentos}" var="item" varStatus="status">
							<li class="list-group-item">
								<div class="form-check">
									<form:checkbox path="listOfNames" class="form-check-input"
										value="${item}" id="${status.index}" />
									<label class="form-check-label" for="${status.index}">
										${item} </label>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<a class="btn btn-default btn-lg" href="${contextPath}/bot">Cancelar</a>
				<button type="submit" class="btn btn-primary btn-lg">Gravar</button>
			</div>
		</div>

	</form:form>
</body>
</html>
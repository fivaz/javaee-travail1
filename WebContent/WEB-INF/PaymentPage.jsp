<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<c:url value="/payment" var="linkServletPayment"/>

<html>
<head>
    <title>Paiement</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
</head>
<body class="m-3">
    <h1>Paiement</h1>
	<h3>Total ${total}</h3>
	<form method="POST" action="${linkServletPayment}">
		<input type="hidden" name="total" value="${total}">
		<div class="form-group">
			<label for="name">Nom</label>
			<input type="text" class="form-control" id="name" name="name" aria-describedby="nameHelp">
			<small id="nameHelp" class="form-text text-muted">Votre nom comme il est écrit sur votre carte.</small>
		</div>
		<div class="form-group">
			<label for="email">Email</label>
			<input type="email" class="form-control" id="email">
		</div>
		<div class="form-group">
			<label for="card">Numéro de la carte de crédit</label>
			<input type="text" class="form-control" id="card">
		</div>
		<div class="form-group">
			<label for="month">Mois d'expiration</label>
			<input type="number" class="form-control" min="01" max="12" maxlength="2" id="month">
		</div>		
		<div class="form-group">
			<label for="year">Année d'expiration</label>
			<input type="number" class="form-control" min="00" max="99" maxlength="2" id="year">
		</div>
		
		<button type="submit" class="btn btn-primary">Commander</button>
    </form>
    <div>
    	<a class="h3" href="${linkServletProductsList}">Retour au magasin</a>
    </div>
</body>
</html>

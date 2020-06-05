<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<c:url value="/checkout" var="linkServletCheckout"/>
<c:url value="/payment" var="linkServletPayment"/>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
</head>
<body class="m-5">
	<h1>Checkout</h1>
    <table class="table table-striped">
    	<thead>
	    	<tr>
	            <th scope="col">Nom</th>
	            <th scope="col">Quantité</th>
	            <th scope="col"></th>
	            <th scope="col"></th>
	            <th scope="col"></th>
	            <th scope="col">Prix</th>
	        </tr>
    	</thead>
        <tbody>
        <c:forEach var="productWithQuantity" items="${cart.products}" varStatus="status">
	        <tr>
	        	<td>${productWithQuantity.product.name}</td>
	        	<td>${productWithQuantity.quantity}</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="context" value="increase"/>
	        			<button class="btn btn-primary">+</button>
	        		</form>
	        	</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="context" value="reduce"/>
	        			<button class="btn btn-warning">-</button>
	        		</form>
	        	</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="context" value="remove"/>
	    				<button class="btn btn-danger"><%@include file="icons/trash.svg" %></button>
	        		</form>
	        	</td>
	        	<td>CHF ${productWithQuantity.price()}</td>
	        </tr>
        </c:forEach>
    	</tbody>
    </table>
    <div class="d-flex flex-row justify-content-between">
	    <span class="h3">Total</span>
	    <span class="h3">CHF ${cart.total()}</span>
    </div>
    <div class="d-flex justify-content-between">
	    <div>
	    	<a class="h3" href="${linkServletProductsList}">Retour au magasin</a>
	    </div>
	    <form method="GET" action="${linkServletPayment}">
	    	<button class="btn btn-success">Payer</button>
	    </form>
    </div>
</body>
</html>

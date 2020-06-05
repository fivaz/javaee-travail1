<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<c:url value="/checkout" var="linkServletCheckout"/>
<c:url value="/payment" var="linkServletPayment"/>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <table class="table">
    	<thead>
    	<tr>
            <th scope="col">Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col"></th>
            <th scope="col">Price</th>
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
	        			<button>+</button>
	        		</form>
	        	</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="context" value="reduce"/>
	        			<button>-</button>
	        		</form>
	        	</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="context" value="remove"/>
	    				<button><%@include file="icons/trash.svg" %></button>
	        		</form>
	        	</td>
	        	<td>${productWithQuantity.price()}</td>
	        </tr>
        </c:forEach>
    	</tbody>
    </table>
	    <div class="d-flex flex-row justify-content-around">
		    <h2>Total</h2>
		    <h2>CHF ${cart.total()}</h2>
	    </div>
	    <a href="${linkServletProductsList}">Back to shopping</a>
    <form method="GET" action="${linkServletPayment}">
    	<button>Pay</button>
    </form>
</body>
</html>

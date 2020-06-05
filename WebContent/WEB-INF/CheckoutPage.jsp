<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<c:url value="/checkout" var="linkServletCheckout"/>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <table border="1">
    	<thead>
    	<tr>
            <th>Name</th>
            <th>Quantity</th>
            <th></th>
            <th></th>
            <th></th>
            <th>Price</th>
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
	        			<input type="hidden" name="operator" value="+"/>
	        			<button>+</button>
	        		</form>
	        	</td>
	        	<td>
	        		<form method="POST" action="${linkServletCheckout}">
	        			<input type="hidden" name="id" value="${productWithQuantity.product.id}"/>
	        			<input type="hidden" name="operator" value="-"/>
	        			<button>-</button>
	        		</form>
	        	</td>
	        	<td>Remove</td>
	        	<td>${productWithQuantity.product.price}</td>
	        </tr>
        </c:forEach>
    	</tbody>
    </table>
    <h2>Total </h2>
    <a href="${linkServletProductsList}">Back to shopping</a>
    <button>Pay</button>
</body>
</html>

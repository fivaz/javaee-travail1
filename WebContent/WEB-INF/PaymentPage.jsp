<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<c:url value="/payment" var="linkServletPayment"/>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <h3>Total ${total}</h3>
    <c:if test="${paid}">
		<h3>Merci pour votre commande</h3>
	</c:if>
    <form method="POST" action="${linkServletPayment}">
    	<input type="hidden" name="total" value="${total}">
    	<input name="name">
    	<input type="email" name="email">
    	<input name="card">
    	<input type="number" maxlength="2" name="month">
    	<input type="number" maxlength="2" name="year">
    	<button>Order</button>
    </form>
    <a href="${linkServletProductsList}">Back to shopping</a>
</body>
</html>

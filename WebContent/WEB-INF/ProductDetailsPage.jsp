<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<mvc:resources location="/images/" mapping="/images/**"></mvc:resources>
<html>
<head>
    <title>Product</title>
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <div>
    	<h1>${requestScope.product.name}</h1>
    	<p>${requestScope.product.description}</p>
    	<img src='<c:url value="/images/${requestScope.product.visual1}"></c:url>' />   
    	<img src='<c:url value="/images/${requestScope.product.visual2}"></c:url>' /> 
    	<form method="POST" action="${linkServletAddProduct}">
		    <input type="text" name="id" value="${requestScope.product.id}"/>
		    <button>CHF ${requestScope.product.price}
		        <%@include file="icons/shopping-cart.svg" %>
		    </button>
    	</form>
	</div>
</body>
</html>

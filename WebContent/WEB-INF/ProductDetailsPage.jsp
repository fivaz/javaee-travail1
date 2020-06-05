<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>

<html>
<head>
    <title>${requestScope.product.name}</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <div>
    	<h1>${requestScope.product.name}</h1>
    	<p>${requestScope.product.description}</p>
    	<img src='<c:url value="/images/${requestScope.product.visual1}"></c:url>' />   
    	<img src='<c:url value="/images/${requestScope.product.visual2}"></c:url>' /> 
    	<form method="POST" action="${linkServletAddProduct}">
    		<input type="hidden" name="id" value="${requestScope.product.id}"/>
		    <input type="hidden" name="context" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		    <button>CHF ${requestScope.product.price}
		        <%@include file="icons/shopping-cart.svg" %>
		    </button>
    	</form>
	</div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>

<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="styles/global.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="styles/homepage.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="styles/product.css" />" />
</head>
<body class="homepage">
    <jsp:include page="Toolbar.jsp" />
    <c:if test="${not empty param.message}">
		<div class="alert alert-success" role="alert">
		  Merci pour votre commande
		</div>
	</c:if>
    <div class="mt-2 ml-3 description">
	    <a href="${linkServletProductsList}" class="text-decoration-none">
	    	<h1>Welcome to e-shop!</h1>
	    </a>
	    <a href="${linkServletProductsList}" class="h4 text-decoration-none">
	   		<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
	   	</a>
    </div>
    <div class="row justify-content-around mr-2 ml-2 mt-5">
	    <c:forEach var="product" items="${products}" varStatus="status">
	    	<c:set var="product" value="${product}" scope="request"/>
	   		<c:import url="Product.jsp" />
	    </c:forEach>
    </div>    
</body>
</html>

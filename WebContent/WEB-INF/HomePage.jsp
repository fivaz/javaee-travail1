<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>

<html>
<head>
    <title>Accueil</title>
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
	    	<h1>Bienvenue!</h1>
	    </a>
	    <a href="${linkServletProductsList}" class="h4 text-decoration-none">
	   		<p>
	   			Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Nisl suscipit adipiscing bibendum est ultricies integer quis. Auctor urna nunc id cursus metus aliquam. Nec nam aliquam sem et tortor consequat id porta. At augue eget arcu dictum varius duis at consectetur. 	
   			</p>
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

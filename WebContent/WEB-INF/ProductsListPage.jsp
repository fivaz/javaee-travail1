<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Produits</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="styles/global.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="styles/product.css" />" />
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <div class="row flex-wrap mr-2 ml-2 mt-4">
	    <c:forEach var="product" items="${products}" varStatus="status">
	    	<c:set var="product" value="${product}" scope="request"/>
	   		<c:import url="Product.jsp" />
	    </c:forEach>
    </div>
</body>
</html>

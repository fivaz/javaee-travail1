<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Produits</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"/>
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <c:forEach var="product" items="${products}" varStatus="status">
    	<c:set var="product" value="${product}" scope="request"/>
   		<c:import url="Product.jsp" />
    </c:forEach>
</body>
</html>

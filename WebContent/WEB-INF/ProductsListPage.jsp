<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <c:forEach var="product" items="${products}" varStatus="status">
    	<c:set var="product" value="${product}" scope="request"/>
   		<c:import url="Product.jsp" />
    </c:forEach>
</body>
</html>

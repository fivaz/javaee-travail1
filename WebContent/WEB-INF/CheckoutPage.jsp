<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletProductsList"/>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <table>
    	<tr>
            <th>Name</th>
            <th>Quantity</th>
            <th></th>
            <th></th>
            <th></th>
            <th>Price</th>
        </tr>
    </table>
    <h2>Total </h2>
    <a>Back to shopping</a>
    <button></button>
    <c:forEach var="product" items="${products}" varStatus="status">
    	<c:set var="product" value="${product}" scope="request"/>
   		<c:import url="Product.jsp" />
    </c:forEach>
</body>
</html>

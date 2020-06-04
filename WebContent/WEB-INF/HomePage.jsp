<%--
  Created by IntelliJ IDEA.
  User: Fivaz
  Date: 03/06/2020
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
    <jsp:include page="Toolbar.jsp" />
    <h1>Welcome to e-shop!</h1>
    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
    <img src='https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2018/08/kitten-440379.jpg?h=c8d00152&itok=1fdekAh2'  alt="cat"/>
    <c:forEach var="product" items="${products}" varStatus="status">
    	<c:set var="product" value="${product}" scope="request"/>
   		<c:import url="Product.jsp" />
    </c:forEach>
</body>
</html>

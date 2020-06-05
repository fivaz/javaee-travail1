<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/home" var="linkServletHomePage"/>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="${linkServletHomePage}">Homepage</a>
    <div class="collapse navbar-collapse" id="navbarText">
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    </ul>
    	<span class="navbar-text">
    		<jsp:include page="ShoppingCart.jsp"/>
 		</span>
    </div>
</nav>
<%--
  Created by IntelliJ IDEA.
  User: Fivaz
  Date: 03/06/2020
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/checkout" var="linkServletCheckout"/>
<a href="${linkServletCheckout}">
	<div class="d-flex flex-row justify-content-around">
	    <div><%@include file="icons/shopping-cart.svg" %></div>
	    <div>${sessionScope.cart != null ? sessionScope.cart.size() : 0}</div>
	</div>
</a>

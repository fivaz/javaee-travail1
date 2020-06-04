<%--
  Created by IntelliJ IDEA.
  User: Fivaz
  Date: 03/06/2020
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<div>
	<h2>${requestScope.product.name}</h2>
    <img src="${requestScope.product.visual1}"/>
    <form method="POST" action="${linkServletAddProduct}">
	    <input type="text" name="id" value="${requestScope.product.id}"/>
	    <button>CHF ${requestScope.product.price}
	        <%@include file="images/shopping-cart.svg" %>
	    </button>
    </form>
</div>
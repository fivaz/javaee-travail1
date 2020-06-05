<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<c:url value="/products/" var="linkServletProductDetails"/>

<div>
	<a href="${linkServletProductDetails}${requestScope.product.id}">
		<h2>${requestScope.product.name}</h2>
    </a>
   	<img src='<c:url value="/images/${requestScope.product.visual1}"></c:url>'/>   
    <form method="POST" action="${linkServletAddProduct}">
	    <input type="hidden" name="id" value="${requestScope.product.id}"/>
	    <input type="hidden" name="context" value="${requestScope['javax.servlet.forward.request_uri']}"/>
	    <button>CHF ${requestScope.product.price}
	        <%@include file="icons/shopping-cart.svg" %>
	    </button>
    </form>
</div>
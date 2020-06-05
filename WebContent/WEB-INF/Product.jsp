<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<c:url value="/products/" var="linkServletProductDetails"/>

<div class="product d-flex flex-colum align-items-center mb-5">
	<div class="image">
	   	<a href="${linkServletProductDetails}${requestScope.product.getId()}">
		   	<h1 class="top">
				<span>${requestScope.product.getName()}</span>
		    </h1>   
		    <img src='<c:url value="/images/${requestScope.product.getVisual1()}"></c:url>'/>
	    </a>
	    <form class="bottom" method="POST" action="${linkServletAddProduct}">
		    <input type="hidden" name="id" value="${requestScope.product.getId()}"/>
		    <input type="hidden" name="context" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		    <button class="btn btn-success">
		    	CHF ${requestScope.product.getPrice()}
				<%@include file="icons/shopping-cart.svg" %>
		    </button>
	    </form>
	</div>
</div>

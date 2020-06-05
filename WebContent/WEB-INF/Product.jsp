<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<c:url value="/products/" var="linkServletProductDetails"/>

<div class="product d-flex flex-colum align-items-center mb-5">
	<div class="image">
	   	<a href="${linkServletProductDetails}${requestScope.product.id}">
		   	<h1 class="top">
				<span>${requestScope.product.name}</span>
		    </h1>   
		    <img src='<c:url value="/images/${requestScope.product.visual1}"></c:url>'/>
	    </a>
	    <form class="bottom" method="POST" action="${linkServletAddProduct}">
		    <input type="hidden" name="id" value="${requestScope.product.id}"/>
		    <input type="hidden" name="context" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		    <button class="btn btn-success">
		    	CHF ${requestScope.product.price}
				<%@include file="icons/shopping-cart.svg" %>
		    </button>
	    </form>
	</div>
</div>

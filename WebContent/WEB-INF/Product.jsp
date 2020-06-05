<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/products" var="linkServletAddProduct"/>
<c:url value="/products/" var="linkServletProductDetails"/>

<div class="product d-flex flex-colum align-items-center mb-5">
	<div class="image">
	   	<a class="top" href="${linkServletProductDetails}${requestScope.product.id}">
			<span>${requestScope.product.name}</span>
	    </a>   
	    <img src='<c:url value="/images/${requestScope.product.visual1}"></c:url>'/>
	    <form class="bottom" method="POST" action="${linkServletAddProduct}">
		    <input type="hidden" name="id" value="${requestScope.product.id}"/>
		    <input type="hidden" name="context" value="${requestScope['javax.servlet.forward.request_uri']}"/>
		    <button type="button" class="btn btn-success">CHF ${requestScope.product.price}
		        <%@include file="icons/shopping-cart.svg" %>
		    </button>
	    </form>
	</div>
</div>

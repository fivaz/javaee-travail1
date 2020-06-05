package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Cart;
import model.Product;

public class SessionUtil {

	public static Cart getCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Cart cart = null;
		cart = (Cart) session.getAttribute("cart");
		if(cart == null)
			cart = new Cart();
		return cart;
	}
	
	public static void addtoCart(HttpServletRequest request, Product product) {
		Cart cart = getCart(request);
		cart.addProduct(product);
		
		HttpSession session = request.getSession();
		session.setAttribute("cart", cart);	
	}
}

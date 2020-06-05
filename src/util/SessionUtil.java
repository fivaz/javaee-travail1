package util;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtil {

	public static List<Integer> getCart(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Integer> shoppingCart = null;
		shoppingCart = (List<Integer>) session.getAttribute("cart");
		if(shoppingCart == null)
			shoppingCart = new ArrayList<>();
		return shoppingCart;
	}
	
	public static void addtoCart(HttpServletRequest request, int productId) {
		List<Integer> shoppingCart = getCart(request);
		shoppingCart.add(productId);
		HttpSession session = request.getSession();
		session.setAttribute("cart", shoppingCart);	
	}
}

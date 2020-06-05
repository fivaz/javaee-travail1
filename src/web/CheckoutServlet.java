package web;

import util.SessionUtil;
import util.Variables;
import model.Cart;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;

import java.io.IOException;

@WebServlet(urlPatterns = "/checkout")
public class CheckoutServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ProductDao productDao;

	public void init() {
		productDao = new ProductDao();
	}
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Cart cart = SessionUtil.getCart(request);
			
		request.setAttribute("cart", cart);
        request.getRequestDispatcher(Variables.folder + "CheckoutPage.jsp").forward(request, response);
    }
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String operator = request.getParameter("operator");
		int productId = Integer.valueOf(request.getParameter("id"));
		Cart cart = SessionUtil.getCart(request);
		if(operator.equals("+"))
			cart.increaseProduct(productId);
		if(operator.equals("-"))
			cart.reduceProduct(productId);
		request.setAttribute("cart", cart);
        request.getRequestDispatcher(Variables.folder + "CheckoutPage.jsp").forward(request, response);
    }
}

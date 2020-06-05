package web;

import util.SessionUtil;
import util.Variables;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;

import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/products")
public class ProductsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ProductDao productDao;

	public void init() {
		productDao = ProductDao.getInstance();
	}
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<Product> products = productDao.get();
		
		request.setAttribute("products", products);		
        request.getRequestDispatcher(Variables.folder + "ProductsListPage.jsp").forward(request, response);
    }
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int productId = Integer.valueOf(request.getParameter("id"));
		String context = request.getParameter("context");
		Product product = productDao.getProduct(productId);
		SessionUtil.addtoCart(request, product);
		
		response.sendRedirect(context);
    }
}

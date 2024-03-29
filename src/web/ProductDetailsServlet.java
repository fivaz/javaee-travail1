package web;

import util.Variables;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;

import java.io.IOException;

@WebServlet(urlPatterns = "/products/*")
public class ProductDetailsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ProductDao productDao;

	public void init() {
		productDao = ProductDao.getInstance();
	}
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int id = Integer.parseInt(request.getPathInfo().substring(1));
		Product product = productDao.getProduct(id);
		
		request.setAttribute("product", product);
		request.getRequestDispatcher(Variables.folder + "ProductDetailsPage.jsp").forward(request, response);
    }
}

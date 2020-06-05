package web;

import util.Variables;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ProductDao productDao;

	public void init() {
		productDao = new ProductDao();
	}

	/*
	private void pseudoRegister() {
		int id = 1;
		String name = "Product";
		String description = "description of product";
		double price = 99.99;
		String visual1 = "https://static.digitecgalaxus.ch/Files/1/5/4/2/2/9/8/2/OH-RW86-NR-a%20rotschw%20Einzel%20923_18_grob.jpg?impolicy=PictureComponent&resizeWidth=1399&resizeHeight=1399&resizeType=downsize";
		String visual2 = "https://static.digitecgalaxus.ch/Files/1/5/4/2/2/9/8/3/OH-RW86-NR-b%20rotschw%20Funktion%20Neigung%20924_18_grob.jpg?impolicy=PictureComponent&resizeWidth=1399&resizeHeight=1399&resizeType=downsize";

		Product product = new Product(id, name, visual1, visual2, price, description);
		
		productDao.save(product);
	}
	*/
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<Product> products = productDao.get();
		System.out.println(products);
		request.setAttribute("products", products);
		
        request.getRequestDispatcher(Variables.folder + "HomePage.jsp").forward(request, response);
    }
}

package web;

import util.SessionUtil;
import util.Variables;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cart;

import java.io.IOException;

@WebServlet(urlPatterns = "/payment")
public class PaymentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Cart cart = SessionUtil.getCart(request);
		double total = cart.total();
		request.setAttribute("total", total);
		request.setAttribute("paid", false);
		/**/
        request.getRequestDispatcher(Variables.folder + "PaymentPage.jsp").forward(request, response);
    }
	
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		double total = Double.valueOf(request.getParameter("total"));
		request.setAttribute("total", total);
		request.setAttribute("paid", true);
        request.getRequestDispatcher(Variables.folder + "PaymentPage.jsp").forward(request, response);
    }
}

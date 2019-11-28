package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/payment" })
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Payment() {
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Forward to /WEB-INF/views/productListView.jsp
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/WEB-INF/views/payment.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String CardNumber = request.getParameter("Card Number");
		System.out.println("card numner " + CardNumber);
		boolean hasError = false;
		String errorString = null;

		if (CardNumber == null || CardNumber == "") {
			errorString = "Required username and password!";
			hasError = true;
		} 
		// If error, forward to /WEB-INF/views/login.jsp
		if (hasError) {

			// Store information in request attribute, before forward.
			request.setAttribute("errorString", errorString);

			// Forward to /WEB-INF/views/login.jsp
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher("/WEB-INF/views/warning.jsp");

			dispatcher.forward(request, response);
		}
		// If no error
		// Store user information in Session
		// And redirect to userInfo page.
		else {
			RequestDispatcher dispatcher //
					= this.getServletContext().getRequestDispatcher("/WEB-INF/views/confirmation.jsp");

			dispatcher.forward(request, response);
		}
	}
}
package org.studyeasy.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		
		case "login":
			request.getRequestDispatcher("login.jsp").forward(request, response);
		case "signup":
			request.getRequestDispatcher("signUp.jsp").forward(request, response);
			break;
		case "about":
			request.getRequestDispatcher("about.jsp").forward(request, response);
			break;
		default:
			break;
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		switch (action) {
		case "loginSubmit":
			authenicate(request, response);
			break;

		default:
			break;
		}

	}

	public void authenicate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username.equals("Derek") && password.equals("Kitty")) {
			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
			newSession.setAttribute("username", username);
			response.sendRedirect(request.getContextPath() + "/MemberAreaController?action=memberArea");
		} else {
			response.sendRedirect(request.getContextPath() + "/Controller?action=login");
		}
	}
}

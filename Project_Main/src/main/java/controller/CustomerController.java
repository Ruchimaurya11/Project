package controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CustomerDao;
import email_service.Servicesss;
import model.Customer;

/**
 * Servlet implementation class CustomerController
 */
@WebServlet("/CustomerController")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CustomerController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		if (action.equalsIgnoreCase("register")) {
			Customer u = new Customer();
			u.setName(request.getParameter("name"));
			u.setAddress(request.getParameter("address"));
			u.setContact(Long.parseLong(request.getParameter("contact")));
			u.setEmail(request.getParameter("email"));
			u.setPassword(request.getParameter("password"));
			System.out.println(u);
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if (flag == false) {
				CustomerDao.insertUser(u);
				response.sendRedirect("c-login.jsp");
			} else {
				request.setAttribute("msg", "account already registered");
				request.getRequestDispatcher("c-register.jsp").forward(request, response);
			}
		} else if (action.equalsIgnoreCase("login")) {
			Customer u = new Customer();
			u.setEmail(request.getParameter("email"));
			u.setPassword(request.getParameter("password"));
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if (flag == true) {
				Customer u1 = CustomerDao.loginUser(u);
				System.out.println(u1);
				if (u1 != null) {
					HttpSession session = request.getSession();
					session.setAttribute("data", u1);
					request.getRequestDispatcher("c-home.jsp").forward(request, response);
				} else {
					request.setAttribute("msg", "Password is incorrect");
					request.getRequestDispatcher("c-login.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("msg", "Account not registered");
				request.getRequestDispatcher("c-login.jsp").forward(request, response);
			}
		}

		else if (action.equalsIgnoreCase("update")) {
			Customer u = new Customer();
			u.setId(Integer.parseInt(request.getParameter("id")));
			u.setName(request.getParameter("name"));
			u.setContact(Long.parseLong(request.getParameter("contact")));
			u.setAddress(request.getParameter("address"));
			u.setEmail(request.getParameter("email"));
			CustomerDao.updateUser(u);
			HttpSession session = request.getSession();
			session.setAttribute("data", u);
			request.getRequestDispatcher("c-home.jsp").forward(request, response);
		} else if (action.equalsIgnoreCase("cp")) {
			String email = request.getParameter("email");
			String op = request.getParameter("op");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			boolean flag = CustomerDao.checkPassword(email, op);
			if (flag == true) {
				if (np.equals(cnp)) {
					CustomerDao.updatePassword(email, np);
					response.sendRedirect("c-home.jsp");
				} else {
					request.setAttribute("msg", "New pass and Confirm new pass not matched");
					request.getRequestDispatcher("c-change-password.jsp").forward(request, response);
				}
			} else {
				request.setAttribute("msg", "Old pass is incorrect");
				request.getRequestDispatcher("c-change-password.jsp").forward(request, response);
			}
		} else if (action.equalsIgnoreCase("getotp")) {
			String email = request.getParameter("email");
			boolean flag = CustomerDao.checkEmail(email);
			if (flag == true) {
				Random r = new Random();
				int num = r.nextInt(999999);
				Servicesss s = new Servicesss();
				s.sendMail(email, num);
				request.setAttribute("email", email);
				request.setAttribute("otp", num);
				request.getRequestDispatcher("c-verify-otp.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "Account not found");
				request.getRequestDispatcher("c-forgot-password.jsp").forward(request, response);
			}
		} else if (action.equalsIgnoreCase("verify")) {
			String email = request.getParameter("email");
			int otp1 = Integer.parseInt(request.getParameter("otp1"));
			int otp2 = Integer.parseInt(request.getParameter("otp2"));
			if (otp1 == otp2) {
				request.setAttribute("email", email);
				request.getRequestDispatcher("c-new-pass.jsp").forward(request, response);
			} else {
				request.setAttribute("msg", "OTP not matched");
				request.setAttribute("email", email);
				request.setAttribute("otp", otp1);
				request.getRequestDispatcher("c-verify-otp.jsp").forward(request, response);
			}
		} else if (action.equalsIgnoreCase("cnp")) {
			String email = request.getParameter("email");
			String np = request.getParameter("np");
			String cnp = request.getParameter("cnp");
			if (np.equals(cnp)) {
				CustomerDao.updatePassword(email, np);
				response.sendRedirect("c-login.jsp");
			} else {
				request.setAttribute("msg", "NP and CNP not same");
				request.getRequestDispatcher("c-new-pass.jsp").forward(request, response);
			}
		}
	}

}

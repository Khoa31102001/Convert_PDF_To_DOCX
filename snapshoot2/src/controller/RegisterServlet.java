package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Account;
import model.bo.AccountBo;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AccountBo accountbo = new AccountBo();

	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (!username.equals("") && !password.equals("") && !isErrorAccountName(username)) {
			Account account = new Account(username, password);
			if (accountbo.save(account)) {
				request.getSession().setAttribute("account", account);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/fileinput.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			request.setAttribute("accounts", accountbo.getAll());
			RequestDispatcher dispatcher = request.getRequestDispatcher("/register.jsp");
			dispatcher.forward(request, response);
		}
	}
	private boolean isErrorAccountName(String username) {
		List<Account> accounts = accountbo.getAll();
		for(Account a : accounts) {
			if (a.getUsername().equals(username)) {
				return true;
			}
		}
		
		return false;
	}

}

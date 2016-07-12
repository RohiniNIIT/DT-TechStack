package com.company.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dao.UserDao;
import com.company.model.User;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public LoginServlet() {
		// TODO Auto-generated constructor stub

	}

	/**
	 * @param UserID
	 * @param Password
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: LOCALHOST  ").append(request.getContextPath());

		String userId = (String) request.getParameter("UserID");
		String password = (String) request.getParameter("Password");
		System.out.println("userId is " + userId + " password is " + password);

		/*
		 * if(validUser){ home.jsp }else{ nohome.jsp; }
		 */

		/*
		 * RequestDispatcher dispatcher = null;
		 * 
		 * if(validUser){ System.out.println("inside admin login");
		 * dispatcher=request.getRequestDispatcher("home.jsp");
		 * dispatcher.forward(request, response); }else if(validUser &&
		 * userId.equals("user")){ System.out.println("inside user login");
		 * dispatcher=request.getRequestDispatcher("home1.jsp");
		 * dispatcher.forward(request, response); }else{ System.out.println(
		 * "inside other users");
		 * dispatcher=request.getRequestDispatcher("loginfailed.jsp");
		 * dispatcher.forward(request, response); }
		 * 
		 * }
		 */
		try {
			System.out.println("INSIDE TRY");
			/*Class.forName("org.h2.Driver");
			String url = "jdbc:h2:tcp://localhost/~/test";
			String dbUserName = "sa";
			String dbPassword = "";
			Connection conn = DriverManager.getConnection(url, dbUserName, dbPassword);*/
			System.out.println("H2 DATABASE CONNECTED ***************");
			
//			User user = new User();

			boolean validUser = validateUser(userId, password);

			System.out.println("validUser is " + validUser);
			
			RequestDispatcher dispatcher = null;

			if (validUser) {
				System.out.println("inside admin login");
				dispatcher = request.getRequestDispatcher("Adminhome.jsp");
				dispatcher.forward(request, response);
			} else if (validUser && userId.equals("user")) {
				System.out.println("inside user login");
				dispatcher = request.getRequestDispatcher("Adminhome1.jsp");
				dispatcher.forward(request, response);
			} else {
				System.out.println("inside other users");
				dispatcher = request.getRequestDispatcher("Adminloginfailed.jsp");
				dispatcher.forward(request, response);
			}

		} catch(Exception e){
			
		}
		/*catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.getMessage();
		}*/
		// add application code here
		// System.out.println("H2 Database connected successfully");
		// conn.close();

	}

	public boolean validateUser(String userId,String password){

		
		
//		No DB approach
		
		String adminUser = "admin";
		String genUser = "user";

//		DB Approach
		
		UserDao userDao = new UserDao();
//		userDao.getUserById(12);
		
//		user = userDao.getUserById(1);
		
		String adminDbUser = userDao.getUserById(1).getName();
		String adminDbPassword = userDao.getUserById(1).getPassword();
		
		System.out.println("adminDbUser "+adminDbUser +"adminDbPassword "+ adminDbPassword );
		
		String genDbUser;

		
		// boolean userValidation = userDao.validateUser(userDao.getUser(0));
		//
		// System.out.println("userValidation is "+userValidation);

		// TODO Auto-generated method stub
		// user.getId();

		/*if (user.getName().equals(adminUser) && user.getPassword().equals(adminUser)) {
			return true;
		}

		if (user.getName().equals(genUser) && user.getPassword().equals(genUser)) {
			return true;
		}*/
		
		
		if (userId.equals(adminDbUser) && password.equals(adminDbPassword)) {
			return true;
		}

		/*if (user.getName().equals(genUser) && user.getPassword().equals(genUser)) {
			return true;
		}*/

		return false;

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

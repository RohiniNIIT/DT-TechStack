package com.niit.shopcart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.h2.Driver;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at LOCALHOST: ").append(request.getContextPath());
//	request.setAttribute("userid", "NIIT");	
//	request.setAttribute("password", "NIIT@123");
	String USERID= (String)request.getParameter("userid");
	String PASSWORD=  (String)request.getParameter("password");
	
	System.out.println("USER ID IS "+USERID+"\t PASSWORD IS "+PASSWORD);
	
	// code to test db connectivity
       try{
    	System.out.println("INSIDE TRY");   
		Class.forName("org.h2.Driver");
		String url = "jdbc:h2:tcp://localhost/~/test";
		String dbUserName = "sa";
		String dbPassword = "";
		Connection conn = DriverManager.getConnection(url,dbUserName,dbPassword);
		System.out.println("H2 DATABASE CONNECTED ***************");
		
		RequestDispatcher dispatcher = null;
		
		UserDAO userDAO=new UserDAO();
		if(userDAO.isValidCredentials(USERID,PASSWORD))
		{
			dispatcher=request.getRequestDispatcher("dblog.html");
			dispatcher.forward(request, response);
		}
		else
		{
			dispatcher=request.getRequestDispatcher("dbfail.html");
			dispatcher.forward(request, response);
		}
			
			
       }catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.getMessage();
		}
		// add application code here
//		System.out.println("H2 Database connected successfully");
//		conn.close();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

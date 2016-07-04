package com.niit.ShoppingCart.Servlet.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.ShoppingCart.DB.Dao.*;
import com.niit.ShoppingCart.DB.Model.*;
//import com.niit.ShoppingCart.DB.Util.*;

@WebServlet("/categoryController")
public class categoryController extends HttpServlet {
	
	private CategoryDao dao;
	private static final long serialVersionUID = 1L;
	public static final String lIST_CATEGORY = "/listcategory.jsp";
	public static final String INSERT_OR_EDIT = "/category.jsp";
       
    public categoryController() {
    	dao = new CategoryDaoImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter( "action" );
		
		if( action.equalsIgnoreCase( "delete" ) ) {
			forward = lIST_CATEGORY;
			int categoryId = Integer.parseInt( request.getParameter("categoryId") );
			dao.deleteCategory(categoryId);
			request.setAttribute("categories", dao.getAllCategories() );
		}
		else if( action.equalsIgnoreCase( "edit" ) ) {
			forward = INSERT_OR_EDIT;
			int categoryId = Integer.parseInt( request.getParameter("categoryId") );
			Category category = dao.getCategoryById(categoryId);
			request.setAttribute("category", category);
		}
		else if( action.equalsIgnoreCase( "insert" ) ) {
			forward = INSERT_OR_EDIT;
		}
		else {
			forward = lIST_CATEGORY;
			request.setAttribute("categories", dao.getAllCategories() );
		}
		RequestDispatcher view = request.getRequestDispatcher( forward );
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Category category = new Category();
		//category.setCategoryId(Integer.parseInt( request.getParameter( "categoryId" ) ));
		category.setCategoryName( request.getParameter( "categoryName" ) );
		category.setCategoryDescription( request.getParameter( "categoryDescription" ) );
		//product.setProductPrice( Integer.parseInt( request.getParameter( "productPrice" ) ) );
		String categoryId = request.getParameter("categoryId");
		
		if( categoryId == null || categoryId.isEmpty() ) 
			dao.addCategory(category);
		else {
			category.setCategoryId( Integer.parseInt(categoryId) );
			dao.updateCategory(category);
		}
		RequestDispatcher view = request.getRequestDispatcher( lIST_CATEGORY );
		request.setAttribute("categories", dao.getAllCategories());
		view.forward(request, response);
	}
}

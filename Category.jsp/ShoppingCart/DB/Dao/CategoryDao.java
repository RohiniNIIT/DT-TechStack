package com.niit.ShoppingCart.DB.Dao;

import java.util.List;

import com.niit.ShoppingCart.DB.Model.Category;

public interface CategoryDao {
	public void addCategory( Category category );
	public void deleteCategory( int categoryId );
	public void updateCategory( Category category );
	public List<Category> getAllCategories();
	public Category getCategoryById( int categoryId );
}
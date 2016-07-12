package com.company.dao;

import java.util.List;

import com.company.model.Category;

public interface CategoryDAO {
	public void addCategory( Category category );
	public void deleteCategory( int categoryId );
	public void updateCategory( Category category );
	public List<Category> getAllCategories();
	public Category getCategoryById( int categoryId );
}
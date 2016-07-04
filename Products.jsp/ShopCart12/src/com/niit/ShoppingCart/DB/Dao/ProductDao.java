package com.niit.ShoppingCart.DB.Dao;

import java.util.List;

import com.niit.ShoppingCart.DB.Model.Product;

public interface ProductDao {
	public void addProduct( Product product );
	public void deleteProduct( int productId );
	public void updateProduct( Product product );
	public List<Product> getAllProducts();
	public Product getProductById( int productId );
}
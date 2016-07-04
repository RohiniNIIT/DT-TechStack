package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.model.Product;
import com.company.util.DBUtil;

public class ProductDAOImplementation implements ProductDAO {
	
	private Connection conn;

	public ProductDAOImplementation() {
		conn = DBUtil.getConnection();
	}
	@Override
	public void addProduct( Product product ) {
		try {
			String query = "insert into product ( productName, productPrice, productDescription) values (?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			//preparedStatement.setInt( 1, product.getProductId() );
			preparedStatement.setString( 1, product.getProductName() );
			preparedStatement.setInt( 2, product.getProductPrice() );
			preparedStatement.setString( 3, product.getProductDescription() );
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteProduct( int productId ) {
		try {
			String query = "delete from product where productId=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, productId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updateProduct( Product product ) {
		try {
			String query = "update product set  productName=?, productPrice=?, productDescription=? where productId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			//preparedStatement.setInt( 1, product.getProductId() );
			preparedStatement.setString( 1, product.getProductName() );
			preparedStatement.setInt( 2, product.getProductPrice() );
			preparedStatement.setString( 3, product.getProductDescription() );
			preparedStatement.setInt( 4, product.getProductId() );
		
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Product> getAllProducts() {
		List<Product> products = new ArrayList<Product>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery( "select * from product" );
			while( resultSet.next() ) {
				Product product = new Product();
				product.setProductId( resultSet.getInt( "productId" ) );
				product.setProductName( resultSet.getString( "productName" ) );
				product.setProductPrice( resultSet.getInt( "productPrice" ) );
				product.setProductDescription( resultSet.getString( "productDescription" ) );
				//student.setYear( resultSet.getInt( "year" ) );
				products.add(product);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return products;
	}
	@Override
	public Product getProductById(int productId) {
		Product product = new Product();
		try {
			String query = "select * from product where productId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setInt(1, productId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				product.setProductId( resultSet.getInt( "productId" ) );
				product.setProductName( resultSet.getString( "productName" ) );
				product.setProductPrice( resultSet.getInt( "productPrice" ) );
				product.setProductDescription( resultSet.getString( "productDescription" ) );
				//product.setYear( resultSet.getInt( "year" ) );
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return product;
	}

}
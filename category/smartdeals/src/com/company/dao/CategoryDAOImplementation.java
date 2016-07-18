package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.model.Category;
import com.company.util.DBUtil;

public class CategoryDAOImplementation implements CategoryDAO {
	
	private Connection conn;

	public CategoryDAOImplementation() {
		conn = DBUtil.getConnection();
	}
	@Override
	public void addCategory( Category category ) {
		try {
			String query = "insert into category ( categoryName, categoryDescription,productId,supplierId) values (?,?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			//preparedStatement.setInt( 1, category.getCategoryId() );
			preparedStatement.setString( 1, category.getCategoryName() );
			//preparedStatement.setInt( 2, .getProductPrice() );
			preparedStatement.setString( 2, category.getCategoryDescription() );
			preparedStatement.setInt( 3, category.getProductId() );

			preparedStatement.setInt( 4, category.getSupplierId() );
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteCategory( int categoryId ) {
		try {
			String query = "delete from category where categoryId=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, categoryId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updateCategory( Category category ) {
		try {
			String query = "update category set  categoryName=?, categoryDescription=? ,productId=? ,supplierId=? where categoryId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			//preparedStatement.setInt( 1, category.getCategoryId() );
			preparedStatement.setString( 1, category.getCategoryName() );
			//preparedStatement.setInt( 3, product.getProductPrice() );
			preparedStatement.setString( 2, category.getCategoryDescription() );
			preparedStatement.setInt( 3, category.getProductId() );
			preparedStatement.setInt( 4, category.getSupplierId() );
			preparedStatement.setInt(5, category.getCategoryId());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Category> getAllCategories() {
		List<Category> categories = new ArrayList<Category>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery( "select * from category" );
			while( resultSet.next() ) {
				Category category = new Category();
				category.setCategoryId( resultSet.getInt( "categoryId" ) );
				category.setCategoryName( resultSet.getString( "categoryName" ) );
				//category.setCategoryPrice( resultSet.getInt( "categoryPrice" ) );
				category.setCategoryDescription( resultSet.getString( "categoryDescription" ) );
				category.setProductId( resultSet.getInt( "ProductId" ) );

				category.setSupplierId( resultSet.getInt( "SupplierId" ) );

				//student.setYear( resultSet.getInt( "year" ) );
				categories.add(category);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return categories;
	}
	@Override
	public Category getCategoryById(int categoryId) {
		Category category = new Category();
		try {
			String query = "select * from category where categoryId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setInt(1, categoryId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				category.setCategoryId( resultSet.getInt( "categoryId" ) );
				category.setCategoryName( resultSet.getString( "categoryName" ) );
				//product.setProductPrice( resultSet.getInt( "productPrice" ) );
				category.setCategoryDescription( resultSet.getString( "categoryDescription" ) );
				category.setProductId( resultSet.getInt( "ProductId" ) );

				category.setSupplierId( resultSet.getInt( "SupplierId" ) );

				//product.setYear( resultSet.getInt( "year" ) );
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;
	}

}
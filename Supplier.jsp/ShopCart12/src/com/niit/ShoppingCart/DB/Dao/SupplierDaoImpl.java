package com.niit.ShoppingCart.DB.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.niit.ShoppingCart.DB.Model.Supplier;
import com.niit.ShoppingCart.DB.Util.DbUtil;

public class SupplierDaoImpl implements SupplierDao {
	
	private Connection conn;

	public SupplierDaoImpl() {
		conn = DbUtil.getConnection();
	}
	@Override
	public void addSupplier( Supplier supplier ) {
		try {
			String query = "insert into supplier ( supplierName,supplierDescription,supplierAddress) values (?,?,?)";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			//preparedStatement.setInt( 1, supplier.getSupplierId() );
			preparedStatement.setString( 1, supplier.getSupplierName() );
			
			preparedStatement.setString( 2, supplier.getSupplierDescription() );
			preparedStatement.setString(3,supplier.getSupplierAddress());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void deleteSupplier( int supplierId ) {
		try {
			String query = "delete from supplier where supplierId=?";
			PreparedStatement preparedStatement = conn.prepareStatement(query);
			preparedStatement.setInt(1, supplierId);
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public void updateSupplier( Supplier supplier ) {
		try {
			String query = "update supplier set  supplierName=?, supplierDescription=?,supplierAddress where supplierId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			
			preparedStatement.setString( 1, supplier.getSupplierName() );
		
			preparedStatement.setString( 2, supplier.getSupplierDescription() );
			preparedStatement.setString( 3, supplier.getSupplierAddress() );
			preparedStatement.setInt(4, supplier.getSupplierId());
			preparedStatement.executeUpdate();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	@Override
	public List<Supplier> getAllSuppliers() {
		List<Supplier> suppliers = new ArrayList<Supplier>();
		try {
			Statement statement = conn.createStatement();
			ResultSet resultSet = statement.executeQuery( "select * from supplier" );
			while( resultSet.next() ) {
				Supplier supplier = new Supplier();
				supplier.setSupplierId( resultSet.getInt( "supplierId" ) );
				supplier.setSupplierName( resultSet.getString( "supplierName" ) );
				//product.setProductPrice( resultSet.getInt( "productPrice" ) );
				supplier.setSupplierDescription( resultSet.getString( "supplierDescription" ) );
				supplier.setSupplierAddress( resultSet.getString( "supplierAddress" ) );
				//student.setYear( resultSet.getInt( "year" ) );
				suppliers.add(supplier);
			}
			resultSet.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return suppliers;
	}
	@Override
	public Supplier getSupplierById(int supplierId) {
		Supplier supplier = new Supplier();
		try {
			String query = "select * from supplier where supplierId=?";
			PreparedStatement preparedStatement = conn.prepareStatement( query );
			preparedStatement.setInt(1, supplierId);
			ResultSet resultSet = preparedStatement.executeQuery();
			while( resultSet.next() ) {
				supplier.setSupplierId( resultSet.getInt( "supplierId" ) );
				supplier.setSupplierName( resultSet.getString( "supplierName" ) );
				
				supplier.setSupplierDescription( resultSet.getString( "supplierDescription" ) );
				supplier.setSupplierAddress( resultSet.getString( "supplierAddress" ) );
				
			}
			resultSet.close();
			preparedStatement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return supplier;
	}

}
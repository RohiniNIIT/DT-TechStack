package com.niit.ShoppingCart.DB.Dao;

import java.util.List;

import com.niit.ShoppingCart.DB.Model.Supplier;

public interface SupplierDao {
	public void addSupplier( Supplier supplier );
	public void deleteSupplier( int supplierId );
	public void updateSupplier( Supplier supplier );
	public List<Supplier> getAllSuppliers();
	public Supplier getSupplierById( int SupplierId );
}
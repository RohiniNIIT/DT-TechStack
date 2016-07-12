package com.company.dao;

import java.util.List;

import com.company.model.Supplier;

public interface SupplierDAO {
	public void addSupplier( Supplier supplier );
	public void deleteSupplier( int supplierId );
	public void updateSupplier( Supplier supplier );
	public List<Supplier> getAllSuppliers();
	public Supplier getSupplierById( int SupplierId );
}
package com.company.model;

public class Supplier {

	private int supplierId;
	private String supplierName;
	private String supplierDescription;
	private String supplierAddress;
	private int productId;
	private int categoryId;
	private String categoryName;
	//private int year;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	
	public String getSupplierDescription() {
		return supplierDescription;
	}
	public void setSupplierDescription(String supplierDescription) {
		this.supplierDescription = supplierDescription;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	//}
//	public int getYear() {
	//	return year;
	//}
	//public void setYear(int year) {
	//	this.year = year;
	//}
	@Override
	public String toString() {
		return "Supplier [supplierId=" + supplierId + ", supplierName=" + supplierName
				+ ",supplierDescription=" + supplierDescription + ",supplierAddress="+supplierAddress+ ",productId=" + productId +",categoryId=" + categoryId +",categoryName=" + categoryName +"]" ;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
		
}

package com.company.model;

public class Product {

	private int productId;
	private String productName;
	private int productPrice;
	private String productDescription;
	private int categoryId;
	private String categoryName;
	//private int year;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String ProductName) {
		this.productName = ProductName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int ProductPrice) {
		this.productPrice = ProductPrice;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String ProductDescription) {
		this.productDescription = ProductDescription;
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
		return "Product [productId=" + productId + ", productName=" + productName
				+ ", productPrice=" + productPrice + ", ProductDescription=" + productDescription + "CategoryId=" + categoryId + "CategoryName=" + categoryName + "]";
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

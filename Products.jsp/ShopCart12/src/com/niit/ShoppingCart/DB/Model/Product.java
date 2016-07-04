package com.niit.ShoppingCart.DB.Model;

public class Product {

	private int productId;
	private String productName;
	private int productPrice;
	private String productDescription;
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
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
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
		return "Product [productId=" + productId + ", ProductName=" + productName
				+ ", productPrice=" + productPrice + ", productDescription=" + productDescription + "]";
	}
		
}

package com.niit.ShoppingCart.DB.Model;

public class Category {

	private int categoryId;
	private String categoryName;
	
	private String categoryDescription;
	//private int year;
	
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
	
	public String getCategoryDescription() {
		return categoryDescription;
	}
	public void setCategoryDescription(String CategoryDescription) {
		this.categoryDescription = CategoryDescription;
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
		return "Category [categoryId=" + categoryId + ", categoryName=" + categoryName
				+ ",categoryDescription=" + categoryDescription + "]";
	}
		
}

package com.niit.training;

import com.niit.Shoppingcart.Product;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Product product = new Product();
		
		
		product.setId(101);
		product.setName("Mobile");
		product.setPrice(10000d);
		
		
		System.out.println("id:"+product.getId());
		System.out.println("name:"+product.getName());

		System.out.println("price:"+product.getPrice());

	}

}

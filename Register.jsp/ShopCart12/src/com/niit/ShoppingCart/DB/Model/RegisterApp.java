//package com.niit.ShoppingCart.DB.Util;

//public class RegisterApp {
	package com.niit.ShoppingCart.DB.Model;
	import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.niit.ShoppingCart.DB.Dao.RegisteredDao;

	public class RegisterApp {
		
		public static void main(String[] args) {
			RegisteredDao regdao = new RegisteredDao();

			// Add new user
			RegisterUser reguser = new RegisterUser();
			reguser.setFirstName("Rohini");
			reguser.setLastName("k");
			reguser.setGender("female");
			try {
				Date dob = new SimpleDateFormat("yyyy-MM-dd").parse("1993-05-22");
				reguser.setDob(dob);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			reguser.setEmail("Rohini@gmail.com");
			regdao.addUser(reguser);
		}
	}
	//
	/*	 Update user
			user.setEmail("danielniko@example.com");
			user.setUserid(1);
			dao.updateUser(user);

			// Delete user
			//dao.deleteUser(2);

			// Get all users
			for (User iter : dao.getAllUsers()) {
				System.out.println(iter);
			}

			// Get user by id
			System.out.println(dao.getUserById(8));
			
			try {
				DbUtil.getConnection().close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	public boolean validateUser(RegisterUser reguser) {
			
			String adminUser = "admin";
			String genUser = "user";
			
					
			// TODO Auto-generated method stub
//			user.getId();
			
			if(user.getName().equals(adminUser) && user.getPassword().equals(adminUser)) {
				return true;
			}
			
			if(user.getName().equals(genUser) && user.getPassword().equals(genUser)) {
				return true;
			}
			return false;
			
		}
	}*/



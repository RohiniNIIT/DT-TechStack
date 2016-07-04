package com.niit.ShoppingCart.DB.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.niit.ShoppingCart.DB.Model.RegisterUser;
import com.niit.ShoppingCart.DB.Util.DbUtil;

public class RegisteredDao {


		private Connection connection;

		public RegisteredDao() {
			connection = DbUtil.getConnection();
		}

		public void addUser(RegisterUser regUser) {
			try {
				
				//PreparedStatement preparedStatement = connection
						//.prepareStatement("insert into USERLOGIN (Name,Password) values ( ?, ? )");
				// Parameters start with 1
				//preparedStatement.setString(0, user.getName());
			//	preparedStatement.setString(0, user.getPassword());
				
				PreparedStatement preparedStatement = connection
						.prepareStatement("insert into USERLOGIN (firstname,lastname,gender,dob,email) values (?, ?, ?, ?, ? )");
				// Parameters start with 1
				preparedStatement.setString(1, regUser.getFirstName());
				preparedStatement.setString(2, regUser.getLastName());
				preparedStatement.setString(3, regUser.getGender());
				preparedStatement.setDate(4, new java.sql.Date(regUser.getDob().getTime()));
				preparedStatement.setString(5, regUser.getEmail());
				preparedStatement.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	/*	public void deleteUser(int userId) {
			try {
				PreparedStatement preparedStatement = connection
						.prepareStatement("delete from USERLOGIN"); //where name=?");
				// Parameters start with 1
				preparedStatement.setInt(1, userId);
				preparedStatement.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		public void updateUser(RegisterUser regUser) {
			try {
				PreparedStatement preparedStatement = connection
					
						.prepareStatement("update USERLOGIN set name=?, password=?");
				// +"where name=?");
				// Parameters start with 1
				preparedStatement.setCursorName( regUser.getName());
				preparedStatement.setCursorName( regUser.getPassword());
						
						/*.prepareStatement("update users set firstname=?, lastname=?, dob=?, email=?" +
								"where userid=?");
				// Parameters start with 1
				preparedStatement.setString(1, user.getFirstName());
				preparedStatement.setString(2, user.getLastName());
				preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
				preparedStatement.setString(4, user.getEmail());
				preparedStatement.setInt(5, user.getUserid());
				preparedStatement.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		public List<User> getAllUsers() {
			List<User> users = new ArrayList<User>();
			try {
				Statement statement = connection.createStatement();
				ResultSet rs = statement.executeQuery("select * from USERLOGIN");
				while (rs.next()) {
					User user = new User();
					user.setName(rs.getString("name"));
					user.setPassword(rs.getString("password"));
					
					/*user.setUserid(rs.getInt("userid"));
					user.setFirstName(rs.getString("firstname"));
					user.setLastName(rs.getString("lastname"));
					user.setDob(rs.getDate("dob"));
					user.setEmail(rs.getString("email"));
					users.add(user);  
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			return users;
		}
		
		public User getUserById(int id) {
			User user = new User();
			try {
				PreparedStatement preparedStatement = connection.
						prepareStatement("select * from USERLOGIN where id=?");
				preparedStatement.setInt(1, id);
				ResultSet rs = preparedStatement.executeQuery();
				
				if (rs.next()) {
					
					user.setName(rs.getString("name"));
					user.setPassword(rs.getString("password"));
					/*user.setUserid(rs.getInt("userid"));
					user.setFirstName(rs.getString("firstname"));
					user.setLastName(rs.getString("lastname"));
					user.setDob(rs.getDate("dob"));
					user.setEmail(rs.getString("email"));
				
			} catch (SQLException e) {
				e.printStackTrace();
			

			return user;
			}*/
		
		
		//public boolean validateUser(RegisterUser reguser) {
		//	return false;
	//	}
		
		/*public static void main(String args[]){
			System.out.println("Inside userdao");
			
			User userTest = new User();
			
			UserDao ud = new UserDao();
			
			userTest = ud.getUserById(12);
			
			System.out.println(userTest.getName());
			
		}*/
	}



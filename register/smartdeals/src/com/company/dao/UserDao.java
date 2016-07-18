package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.dao.UserDao;
import com.company.model.User;
import com.company.util.DBUtil;

public class UserDao {

	private Connection connection;

	public UserDao() {
		connection = DBUtil.getConnection();
	}

	public void addUser(User user) {
		try {
			
			PreparedStatement preparedStatement = connection
					.prepareStatement("insert into USERLOGIN (Name,Password) values ( ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(0, user.getName());
			preparedStatement.setString(0, user.getPassword());
			
			/*PreparedStatement preparedStatement = connection
					.prepareStatement("insert into LOGINUSER (firstname,lastname,dob,email) values (?, ?, ?, ? )");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
			preparedStatement.setString(4, user.getEmail());*/
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(int userId) {
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
	
	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = connection
				
					.prepareStatement("update USERLOGIN set name=?, password=?");
			// +"where name=?");
			// Parameters start with 1
			preparedStatement.setCursorName( user.getName());
			preparedStatement.setCursorName( user.getPassword());
					
					/*.prepareStatement("update users set firstname=?, lastname=?, dob=?, email=?" +
							"where userid=?");
			// Parameters start with 1
			preparedStatement.setString(1, user.getFirstName());
			preparedStatement.setString(2, user.getLastName());
			preparedStatement.setDate(3, new java.sql.Date(user.getDob().getTime()));
			preparedStatement.setString(4, user.getEmail());
			preparedStatement.setInt(5, user.getUserid());*/
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
				users.add(user);  */
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
				user.setEmail(rs.getString("email"));*/
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}
	
	public boolean validateUser(User user) {
		return false;
	}
	
	/*public static void main(String args[]){
		System.out.println("Inside userdao");
		
		User userTest = new User();
		
		UserDao ud = new UserDao();
		
		userTest = ud.getUserById(12);
		
		System.out.println(userTest.getName());
		
	}*/
}

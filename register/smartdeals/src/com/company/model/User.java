package com.company.model;

public class User {
	
	    private int userId;
		private String Name;
		private String password;
		
		//private String role;
		
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getName() {
			return Name;
		}
		public void setName(String Name) {
			this.Name = Name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		//public String getRole() {
		//	return role;
		//}
	//	public void setRole(String role) {
		//	this.role = role;
	//	}
}

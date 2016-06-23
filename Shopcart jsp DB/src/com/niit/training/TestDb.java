package com.niit.training;

import java.sql.*;

public class TestDb {
    public static void main(String[] a)
            throws Exception {
        Class.forName("org.h2.Driver");
        Connection conn = DriverManager.
            getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
        
      
    
        // add application code here
        System.out.println("H2 Database connected successfully");
        conn.close();
    }
}


/*
public class TestDb {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
*/


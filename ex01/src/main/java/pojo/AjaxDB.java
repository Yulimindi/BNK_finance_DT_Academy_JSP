package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AjaxDB {
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	
	public AjaxDB() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public boolean insert(Student s) throws Exception {
		System.out.println("insert DB 진입");
		stmt = con.prepareStatement("select * from students where name = ?");
		stmt.setString(1, s.getName());
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			System.out.println("false 진입");
			return false;
		} else {
			stmt = con.prepareStatement("insert into students values (?, ?)");
			stmt.setString(1, s.getName());
			stmt.setInt(2, s.getNum());
			stmt.execute();
			System.out.println("true 진입");
			return true;
			
		}

	}
	
}

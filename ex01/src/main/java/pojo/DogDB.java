package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DogDB {
	String name;
	String age;
	String url;
	
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	String uurl = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	
	public DogDB() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(uurl, uid, upw);
	}
	
	public boolean insertDog(Dog d) throws Exception {
		stmt = con.prepareStatement("insert into dog values (?, ?, ?)");
		stmt.setString(1, d.getName());
		stmt.setString(2, d.getAge());
		stmt.setString(3, d.getUrl());
		rs = stmt.executeQuery();
		return true;
	}
	
	public ArrayList<Dog> getDog() throws Exception {
		ArrayList<Dog> list = new ArrayList<>();
		stmt = con.prepareStatement("select * from dog");
		rs = stmt.executeQuery();
		Dog d;
		while(rs.next()) {
			String name = rs.getString("name");
			String age = rs.getString("age");
			String url = rs.getString("url");
			d = new Dog(name, age, url);
			list.add(d);
		}
		
		return list;
	}
}

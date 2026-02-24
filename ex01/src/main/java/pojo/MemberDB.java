package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDB {
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	String name;
	String num;
	int age;
	int height;
	String gender;
	BasketBall b;
	
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	
	public MemberDB() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public ArrayList<BasketBall> getMember() throws Exception {
		BasketBall b;
		ArrayList<BasketBall> bs = new ArrayList<>();
		
		stmt = con.prepareStatement("select name, num from people");
		rs = stmt.executeQuery();

		while(rs.next()) {
			name = rs.getString("name");
			num = rs.getString("num");
			b = new BasketBall(name, num);
			bs.add(b);
		}
	
		return bs;
	}
	
	public BasketBall getInfo(String name) throws Exception {
		stmt = con.prepareStatement("select * from people where name = ?");
		stmt.setString(1, name);
		rs = stmt.executeQuery();

		if(rs.next()) {
			this.name = rs.getString("name");
			num = rs.getString("num");
			age = rs.getInt("age");
			height = rs.getInt("height");
			gender = rs.getString("gender");
		}
		
		b = new BasketBall(this.name, num, age, height, gender);
		return b;
	}
	
	public ArrayList<BasketBall> findMember(String word) throws Exception {
		BasketBall b;
		ArrayList<BasketBall> bs = new ArrayList<>();
		
		stmt = con.prepareStatement("select name, num from people where name like ? or num like ? or age like ? or height like ? or gender like ?");
		stmt.setString(1, "%" + word + "%");
		stmt.setString(2, "%" + word + "%");
		stmt.setString(3, "%" + word + "%");
		stmt.setString(4, "%" + word + "%");
		stmt.setString(5, "%" + word + "%");
		rs = stmt.executeQuery();
		
		while(rs.next()) {
			name = rs.getString("name");
			num = rs.getString("num");
			b = new BasketBall(name, num);
			bs.add(b);
		}
	
		return bs;
	}
	
}

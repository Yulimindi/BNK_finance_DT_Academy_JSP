package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBCon {
	Connection con;
	PreparedStatement stmt;
	ResultSet rs;
	
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	
	String id;
	String pw;
	String name;
	
	public DBCon() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public boolean regist(NewMember m) throws Exception {
		stmt = con.prepareStatement("select * from new where id = ?");
		stmt.setString(1, m.getId());
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			return false;
		}
		
		stmt = con.prepareStatement("insert into new values (?, ?, ?)");
		
		stmt.setString(1, m.getId());
		stmt.setString(2, m.getPw());
		stmt.setString(3, m.getName());
		stmt.execute();
		
		return true;
	}
	
	public ArrayList<NewMember> getInfo() throws Exception {
		
		ArrayList<NewMember> arr = new ArrayList<>();
		NewMember m;
		stmt = con.prepareStatement("select * from new order by id");
		rs = stmt.executeQuery();
		while(rs.next()) {
			this.id = rs.getString("id");
			this.pw = rs.getString("pw");
			this.name = rs.getString("name");
			m = new NewMember(id, pw, name);
			arr.add(m);
		}
		
		return arr;
	}
	
	public ArrayList<NewMember> findInfo(String text) throws Exception {
		
		ArrayList<NewMember> arr = new ArrayList<>();
		NewMember m;
		stmt = con.prepareStatement("select * from new where id like ? or pw like ? or name like ? order by id");
		stmt.setString(1, "%"+text+"%");
		stmt.setString(2, "%"+text+"%");
		stmt.setString(3, "%"+text+"%");
		
		rs = stmt.executeQuery();
		while(rs.next()) {
			this.id = rs.getString("id");
			this.pw = rs.getString("pw");
			this.name = rs.getString("name");
			m = new NewMember(id, pw, name);
			arr.add(m);
		}
		
		return arr;
	}
	
public boolean idCheck(String text) throws Exception {
		
		stmt = con.prepareStatement("select * from new where id = ?");
		stmt.setString(1, text);
		rs = stmt.executeQuery();
		if(rs.next()) {
			return false;
		}
		return true;
	}
}

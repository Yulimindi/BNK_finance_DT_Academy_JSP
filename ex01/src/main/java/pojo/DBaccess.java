package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DBaccess {
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "newgreen";
	String upw = "1234";
	boolean result;
	
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public DBaccess() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public boolean idCheck(Member m) throws Exception {
		pstmt = con.prepareStatement("select id from myprogram where id = ?");
		pstmt.setString(1, m.getId());
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			return false;
		} else {
			return true;
		}
	}
	
	public boolean join(Member m) throws Exception {
		pstmt = con.prepareStatement("insert into myprogram (id, pw, name) values (?, ?, ?)");
		pstmt.setString(1, m.getId());
		pstmt.setString(2, m.getPw());
		pstmt.setString(3, m.getName());
		pstmt.execute();
		
		SaveInfo.id = m.getId();
		SaveInfo.pw = m.getPw();
		SaveInfo.name = m.getName();
		
		return true;
	}
	
	public boolean login(Member m) throws Exception {
		
		pstmt = con.prepareStatement("select * from myprogram where id = ? and pw = ?");
		pstmt.setString(1, m.getId());
		pstmt.setString(2, m.getPw());
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			SaveInfo.id = m.getId();
			SaveInfo.pw = m.getPw();
			SaveInfo.name = rs.getString("name");
			return true;
		} else {
			return false;
		}
		

	}
	
	public boolean set(String id, String pw, String name) throws Exception {
		pstmt = con.prepareStatement("update myprogram set name = ? pw = ? where id = ?");
		pstmt.setString(1, name);
		pstmt.setString(2, pw);
		pstmt.setString(3, id);
		return true;
	}
	
	public ArrayList<Member> memberCheck() throws Exception {
		pstmt = con.prepareStatement("select * from myprogram");
		rs = pstmt.executeQuery();
		
		ArrayList<Member> arr = new ArrayList<>();
		
		Member m;
		
		while(rs.next()) {
			m = new Member(rs.getString("id"), rs.getString("pw"), rs.getString("name"));
			arr.add(m);
		}
		
		return arr;
	}
	
}

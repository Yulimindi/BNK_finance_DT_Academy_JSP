package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DB {

	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	boolean result;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	String name;
	String price;
	String savePath;
	
	public DB() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public ArrayList<Item> getItem() throws Exception {
		pstmt = con.prepareStatement("select * from item");
		rs = pstmt.executeQuery();
		
		ArrayList<Item> list = new ArrayList<>();
		Item item;
		while(rs.next()) {
			this.name = rs.getString("name");
			this.price = rs.getString("price");
			this.savePath = rs.getString("url");
			item = new Item(name, price, savePath);
			list.add(item);
		}
		
		return list;
	}
	
	public boolean insert(Item i) throws Exception {

		
		pstmt = con.prepareStatement("insert into item (name, price, url) values (?, ?, ?)");
		pstmt.setString(1, i.getName());
		pstmt.setString(2, i.getPrice());
		pstmt.setString(3, i.getSavePath());
		pstmt.execute();
		return true;
	}
	
}

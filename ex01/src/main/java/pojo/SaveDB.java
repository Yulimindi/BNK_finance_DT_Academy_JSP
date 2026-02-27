package pojo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class SaveDB {
	String url = "jdbc:oracle:thin:@//localhost:1521/testdb";
	String uid = "green";
	String upw = "1234";
	boolean result;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	String DOJIJUNG_NO;
	String MYONGCHING;
	String MYONGCHING_HANMUN;
	String CONTENT;
	String SIDAE;
	String JIJUNG_DATE;
	String ADDRESS1;
	String Fileurl1;
	String Fileurl2;
	String Fileurl3;
	
	public SaveDB() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, upw);
	}
	
	public boolean insert(Moon m) throws Exception {
		
		pstmt = con.prepareStatement("select * from moon where DOJIJUNG_NO = ? or MYONGCHING = ? or MYONGCHING_HANMUN = ?");
		pstmt.setString(1, m.getDOJIJUNG_NO());
		pstmt.setString(2, m.getMYONGCHING());
		pstmt.setString(3, m.getMYONGCHING_HANMUN());
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			return false;
		}
	
		pstmt = con.prepareStatement("insert into moon (DOJIJUNG_NO, MYONGCHING, MYONGCHING_HANMUN, CONTENT, SIDAE, JIJUNG_DATE, ADDRESS1, fileurl1, fileurl2, fileurl3) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		System.out.println(m.getFileurl3());
		DOJIJUNG_NO = null == m.getDOJIJUNG_NO() ? "비어있음" : m.getDOJIJUNG_NO();
		MYONGCHING = null == m.getMYONGCHING() ? "비어있음" : m.getMYONGCHING();
		MYONGCHING_HANMUN = null == m.getMYONGCHING_HANMUN() ? "비어있음" : m.getMYONGCHING_HANMUN();
		CONTENT = null == m.getCONTENT() ? "비어있음" : m.getCONTENT();
		SIDAE = null == m.getSIDAE() ? "비어있음" : m.getSIDAE();
		JIJUNG_DATE = null == m.getJIJUNG_DATE() ? "비어있음" : m.getJIJUNG_DATE();
		ADDRESS1 = null == m.getADDRESS1() ? "비어있음" : m.getADDRESS1();
		Fileurl1 = "".equals(m.getFileurl1()) ? "no" : m.getFileurl1();
		Fileurl2 = "".equals(m.getFileurl2()) ? "no" : m.getFileurl2();
		Fileurl3 = "".equals(m.getFileurl3()) ? "no" : m.getFileurl3();
		
		
		pstmt.setString(1, DOJIJUNG_NO);
		pstmt.setString(2, MYONGCHING);
		pstmt.setString(3, MYONGCHING_HANMUN);
		pstmt.setString(4, CONTENT);
		pstmt.setString(5, SIDAE);
		pstmt.setString(6, JIJUNG_DATE);
		pstmt.setString(7, ADDRESS1);
		pstmt.setString(8, Fileurl1);
		pstmt.setString(9, Fileurl2);
		pstmt.setString(10, Fileurl3);
		pstmt.execute();
		
		System.out.println("데이터 넣기 성공");
		return true;
		
	}
	
	public ArrayList<Moon> getInfo() throws Exception {
		
		ArrayList<Moon> arr = new ArrayList<>();
		Moon m;
		pstmt = con.prepareStatement("select * from moon");
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			DOJIJUNG_NO = rs.getString("DOJIJUNG_NO");
			MYONGCHING = rs.getString("MYONGCHING");
			MYONGCHING_HANMUN = rs.getString("MYONGCHING_HANMUN");
			CONTENT = rs.getString("CONTENT");
			SIDAE = rs.getString("SIDAE");
			JIJUNG_DATE = rs.getString("JIJUNG_DATE");
			ADDRESS1 = rs.getString("ADDRESS1");
			Fileurl1 = rs.getString("Fileurl1");
			Fileurl2 = rs.getString("Fileurl2");
			Fileurl3 = rs.getString("Fileurl3");
			m = new Moon(DOJIJUNG_NO, MYONGCHING, MYONGCHING_HANMUN, CONTENT, SIDAE, JIJUNG_DATE, ADDRESS1, Fileurl1, Fileurl2, Fileurl3);
			arr.add(m);
		}
		
		return arr;
		
	}
}

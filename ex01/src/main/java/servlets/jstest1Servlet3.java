package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.DBCon;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/jstest1Servlet3")
public class jstest1Servlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		DBCon db;
		try {
			db = new DBCon();
			PrintWriter out = response.getWriter(); 
			if(db.idCheck(id)) {
				out.print("true");
			} else {
				out.print("false");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

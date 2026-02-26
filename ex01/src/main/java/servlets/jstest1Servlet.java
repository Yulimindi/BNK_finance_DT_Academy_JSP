package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.DBCon;
import pojo.NewMember;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/jstest1Servlet")
@MultipartConfig
public class jstest1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			
			DBCon db = new DBCon();
			PrintWriter out = response.getWriter();
			
			NewMember m = new NewMember(id, pw, name);
			
			if(db.regist(m)) {
				out.print("true");
			} else {
				out.print("false");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

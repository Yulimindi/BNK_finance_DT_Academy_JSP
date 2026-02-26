package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.DBCon;
import pojo.NewMember;
import tools.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/jstest1Servlet2")
@MultipartConfig
public class jstest1Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DBCon db;
		try {
			db = new DBCon();
			String text = request.getParameter("text");
			ArrayList<NewMember> arr = db.findInfo(text);
			PrintWriter out = response.getWriter();
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(arr);
			out.print(json);
			
		} catch (Exception e) {
			
		}
		
	}

}

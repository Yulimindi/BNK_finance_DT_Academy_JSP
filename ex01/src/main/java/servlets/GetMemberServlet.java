package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.BasketBall;
import pojo.MemberDB;
import tools.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/GetMemberServlet")
public class GetMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDB db;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		try {
			
			db = new MemberDB();
			BasketBall b = db.getInfo(name);
			
			PrintWriter out = response.getWriter(); 
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(b);
			
			out.print(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}

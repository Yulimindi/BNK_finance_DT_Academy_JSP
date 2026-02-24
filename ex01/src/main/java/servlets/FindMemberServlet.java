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
import java.util.ArrayList;

@WebServlet("/FindMemberServlet")
public class FindMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			MemberDB db = new MemberDB();
			String query = request.getParameter("find");
			ArrayList<BasketBall> arr = db.findMember(query);
			PrintWriter out = response.getWriter();
			ObjectMapper mapper = new ObjectMapper();
			String json  = mapper.writeValueAsString(arr);
			out.print(json);
		} catch (Exception e) {

			e.printStackTrace();
		}
		
	}

}

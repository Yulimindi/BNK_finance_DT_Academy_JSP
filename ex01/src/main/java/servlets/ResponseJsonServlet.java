package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.User;
import tools.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.tomcat.util.json.JSONFilter;

@WebServlet("/getJson")
public class ResponseJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ResponseJsonServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("getJson!");
		
		response.setContentType("application/json;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
//		String json = "{\"no\": 10, \"id\": \"aaa\", \"name\": \"Hong\"}"; // 이스케이프

		String name = request.getParameter("name");
		
		User user = new User();
		user.setId("hello");
		user.setName(name);
		user.setNum(10);

		ObjectMapper mapper = new ObjectMapper();
		// 값을 문자열로 바꿔주는 메서드
		String json = mapper.writeValueAsString(user);
		out.print(json);
	}


}

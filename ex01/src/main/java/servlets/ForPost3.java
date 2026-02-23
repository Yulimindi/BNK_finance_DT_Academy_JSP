package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.JsonUser;
import tools.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ForPost3")
@MultipartConfig
public class ForPost3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("doPost 진입");
		ObjectMapper mapper = new ObjectMapper();
		JsonUser jUser = mapper.readValue(request.getReader(), JsonUser.class); // 요청으로 온 데이터를 읽어서 JsonUser의 class에 넣어라
		
		response.setContentType("application/json; charset=UTF-8");
		
		System.out.println(jUser);
		
		PrintWriter out = response.getWriter();
		
		int result = 1;
		
		if(result == 1) {
//			out.print(jUser);
			mapper.writeValue(out, jUser);
		}
	}

}

package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.AjaxDB;
import pojo.Student;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/ForPost2")
@MultipartConfig
// fetch 방식에서는 위의 어노테이션을 붙여줘야함
public class ForPost2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ForPost2() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doPost 진입");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
		int numm = Integer.parseInt(num);
		
		PrintWriter out = response.getWriter();
		Student s = new Student(name, numm);
		
		try {
			AjaxDB db = new AjaxDB();
			out.print(db.insert(s));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

package servlets;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/test")
public class TestServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	int initCount = 1;
	int doGetCount = 1;
	
    public TestServelt() { // 서블릿 클래스의 생성자 -> 인스턴스는 언제 생성되냐? 최초의 요청이 왔을 때! / 최초의 요청 1회만 실행
        System.out.println("TestServlet 생성");
    }

    @Override
    public void init(ServletConfig config) throws ServletException { // init + ctrl + space / 최초의 요청 1회만 실행
    	System.out.println("TestServlet init (초기화)" + initCount++);
 
    }
    
    @Override
    public void destroy() { // init + ctrl + space
    	System.out.println("TestServlet 종료 (소멸)");
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet() 메소드 호출" + doGetCount++);
		String message = request.getParameter("msg");
		System.out.println("Get 파라미터 값 : " + message);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost() 메소드 호출" + doGetCount++);
		String message = request.getParameter("msg");
		System.out.println("Post 파라미터 값 : " + message);
		
		doGet(request, response);
	}

}

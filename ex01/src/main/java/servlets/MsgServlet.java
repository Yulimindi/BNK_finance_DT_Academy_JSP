package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import pojo.Message;

import java.io.File;
import java.io.IOException;

@WebServlet("/MsgServlet")
@MultipartConfig // 파라미터와 파트를 함께 처리 가능하게 함(getParameter(), getPart())
public class MsgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 실제 파일의 경로
		String savePath = getServletContext().getRealPath("/images");
		
		// 기존 파라미터 처리는 동일함
		String msg = request.getParameter("msg");
		String sender = request.getParameter("sender");
		String receiver = request.getParameter("receiver");
		
		// 파일 데이터 처리
		Part filePart = request.getPart("msgfile");
		String fileName = filePart.getSubmittedFileName();
		
		if(fileName != null && !fileName.isEmpty()) {
			// File.separator : /
			filePart.write(savePath + File.separator + fileName);
		}
		
		Message m = new Message(msg, sender, receiver, savePath);
		request.setAttribute("message", m);
		
		request.getRequestDispatcher("formResult.jsp").forward(request, response);
	}

}

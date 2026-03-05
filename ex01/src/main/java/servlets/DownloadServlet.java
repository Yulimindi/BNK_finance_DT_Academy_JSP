package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 다운로드할 파일 경로 설정 (실제 경로)
		String fileName = request.getParameter("fileName");
		
		String filePath = getServletContext().getRealPath("/images/") + fileName;
		
		File downloadFile = new File(filePath);
		
		if(!downloadFile.exists()) {
			System.out.println("error");
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return;
		}
		
		// 2. MIME 타입 파악 및 설정
		String mimeType = getServletContext().getMimeType(filePath);
		if(mimeType == null) {
			mimeType = "application/octet-stream";
			// 이미지 : image/jpeg, image/png
			// PDF : application/pdf
			// 텍스트 : text/plain
		}
		
		// 브라우저에게 응답 데이터 설명
		response.setContentType(mimeType);
		response.setContentLength((int) downloadFile.length());
		
		// 3. Content-Disposition 헤더 설정 (파일명 인코딩 처리 필수)
		// 일반적으로 공백을 +로 바꾸는데 그걸 %20으로 쓰겠다! 
		String encodedFileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");

		// disposition : 너는 데이터를 받아서 이런 식으로 처리해야한다를 알려줌
		// attachment(다운로드/저장) 또는 inline(보여주기)을 줌
		response.setHeader("Content-Disposition", "attachment; filename=\"" + encodedFileName + "\"");
		
		// 4. 스트림을 통한 파일 전송 (Java 7+ Try-with-resources 사용) : 스트림 닫는거 자주 까먹으니까 그냥 이거 사용해라잉
		try(FileInputStream inStream = new FileInputStream(downloadFile);
				OutputStream outStream = response.getOutputStream()) {
			byte[] buffer = new byte[4096];
			int bytesRead = -1;
			
			while((bytesRead = inStream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}
		}
		
	}


}

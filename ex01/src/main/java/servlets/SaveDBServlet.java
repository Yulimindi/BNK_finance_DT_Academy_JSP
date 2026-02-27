package servlets;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pojo.Moon;
import pojo.SaveDB;
import tools.jackson.databind.JsonNode;
import tools.jackson.databind.ObjectMapper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;


@WebServlet("/SaveDBServlet")
public class SaveDBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	public void init() {
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/6480000/gyeongnamcultural/gyeongnamculturallist"); /*URL*/
        try {
			urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=ae3f9a88c1f50ff766075283681821c4d7daee670515d650ec74b597d8b211fc");
			urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("15", "UTF-8")); /*한 페이지 결과 수*/
	        urlBuilder.append("&" + URLEncoder.encode("resultType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*JSON방식으로 호출 시 파라미터 resultType=json 입력*/

			@SuppressWarnings("deprecation")
			URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        BufferedReader rd;
	        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
	            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }
	        
	        ObjectMapper mapper = new ObjectMapper();
	        String line = rd.readLine();
	        Moon m;
	        SaveDB db;
			try {

				db = new SaveDB();
				JsonNode rs = mapper.readTree(line);
		        JsonNode item = rs.path("gyeongnamculturallist").path("body").path("items").path("item");

		        for(int i = 0; i < item.size(); i++) {
		        	m = mapper.readValue(item.get(i).toString(), Moon.class);
		        	db.insert(m);
		        }
		        rd.close();
		        conn.disconnect();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
        
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SaveDB db;
		try {
			
			db = new SaveDB();
			ArrayList<Moon> arr = db.getInfo();
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(arr);
			PrintWriter out = response.getWriter();
			out.print(json);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}

package con_content;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import model.ContentDAO;
import model.ContentVO;
import model.MemberDAO;




@WebServlet("/moreService")
public class moreService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		
		JsonObject json = new JsonObject();
		Gson gson = new GsonBuilder().disableHtmlEscaping().create();
		int rowNum = Integer.parseInt(request.getParameter("data")); 
		System.out.println(rowNum);
		JsonArray result = new JsonArray();
		
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentDAO dao = new ContentDAO();
		al = dao.showImg(rowNum);
		
		PrintWriter out = response.getWriter();
		
	      for (int i = 0; i < al.size(); i++) {
	    	  
//	    	  int content_id = al.get(i).getContent_id();
//	    	  String title = al.get(i).getTitle();
//	    	  String platform = al.get(i).getPlatform();
//	    	  String c_thumbnail = al.get(i).getC_thumbnail();
//	    	  String genre = al.get(i).getGenre();
//	    	  json = new JsonObject()
	    	  
	         result.add(gson.toJson(al.get(i)));
	      }
		out.print(result);
		
		
	}

}

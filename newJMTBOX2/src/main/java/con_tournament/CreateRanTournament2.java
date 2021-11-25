package con_tournament;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;

import model.ContentDAO;
import model.ContentVO;
import model.MemberDAO;

@WebServlet("/CreateRanTournament2")
public class CreateRanTournament2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("요청이 들어옴");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		String title = request.getParameter("title");
		String c_thumbnail = request.getParameter("c_thumbnail");
		//프린트아웃을 이용해 서버페이지에 출력을 해야 ajax 데이터를 받아올 수 있다.
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		
		ContentDAO dao = new ContentDAO();
		ArrayList<ContentVO> vor = dao.contents_b(title, c_thumbnail);
		JsonArray result = new JsonArray();
		for (int i = 0; i < vor.size(); i++) {
			result.add(gson.toJson(vor.get(i)));
		}
		// 제이슨 구조로 바꾸고 싶은 형태를 넣는다
		out.print(result);
		
	
	}

}

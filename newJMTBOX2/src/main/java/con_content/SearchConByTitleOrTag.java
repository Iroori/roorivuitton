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
import com.google.gson.JsonArray;

import model.ContentDAO;
import model.ContentVO;

@WebServlet("/SearchConByTitleOrTag")
public class SearchConByTitleOrTag extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		ContentDAO dao = new ContentDAO();
		JsonArray result = new JsonArray();

		String searchWords = request.getParameter("searchWords");
		ArrayList<ContentVO> list = dao.showContentsByTitleOrTag(searchWords);

		for (int i = 0; i < list.size(); i++) {
			result.add(gson.toJson(list.get(i)));
			out.print(result);
		}


	}

}

package con_myPage;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ContentVO;
import model.MyConentDAO;

@WebServlet("/MyContents.do")
public class MyContents extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String member_id = request.getParameter("member_id");
		String which = request.getParameter("which");
		
		String which_content_id = which+"_content_id";
		
		MyConentDAO dao = new MyConentDAO();
		ArrayList<ContentVO> myWish =  dao.showMyContents(which_content_id, member_id);
		
		PrintWriter out = response.getWriter();
		
		out.print(myWish.get(0).getContent_id());
//		if(myWish!=null) {
//			HttpSession session = request.getSession();
//			session.setAttribute("myWishContents", myWish);
//		}
//		response.sendRedirect("my"+which+"Content.jsp");
		
	}

}

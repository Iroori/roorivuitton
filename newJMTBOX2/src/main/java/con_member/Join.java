package con_member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberVO;

@WebServlet("/Join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick =request.getParameter("nick");

		MemberDAO dao = new MemberDAO();
		HttpSession session = request.getSession();
		MemberVO vo = dao.join(id, pw, nick);
		//회원가입하면 로그인도 됨.

		if(vo!=null) {
			session.setAttribute("member", vo);
			response.sendRedirect("index.jsp");	
		}else {
			response.sendRedirect("join.jsp");
		}
	
	}

}

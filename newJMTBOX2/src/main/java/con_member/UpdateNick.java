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

@WebServlet("/UpdateNick.do")
public class UpdateNick extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String nick = request.getParameter("nickName");

		HttpSession session = request.getSession();
		
		MemberVO vo = (MemberVO) session.getAttribute("member");
		
		MemberDAO dao = new MemberDAO();
		
		vo = dao.updateNick(vo.getId(), nick, vo.getDate());
		session.setAttribute("member", vo);
		
	
	}

}

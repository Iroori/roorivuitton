package con_member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

@WebServlet("/CheckId")
public class CheckId extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String exampleInputEmail1 = request.getParameter("exampleInputEmail1");
		System.out.println(exampleInputEmail1);
		PrintWriter out = response.getWriter();
		
		MemberDAO dao = new MemberDAO();
		
		int idCheck = dao.checkId(exampleInputEmail1);
		
		if(idCheck == 0) {
			System.out.println("이미존재하는아이디");
		}else if (idCheck==1) {
			System.out.println("사용가능한아이디");
		}
		
		out.print(idCheck+""); // ajax결과값이 result가 되고 String값으로 보내기위해 ""를 넣어준다
	}

}

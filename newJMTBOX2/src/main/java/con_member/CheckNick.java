package con_member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;

@WebServlet("/CheckNick")
public class CheckNick extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			String exampleInputNick1 = request.getParameter("exampleInputNick1");
			System.out.println(exampleInputNick1);
			PrintWriter out = response.getWriter();
			
			MemberDAO dao = new MemberDAO();
			
			int result = dao.checkNick(exampleInputNick1);
			
			System.out.println(result);
			if(result == 0) {
				System.out.println("이미존재하는아이디");
			}else if (result==1) {
				System.out.println("사용가능한아이디");
			}
			
			out.print(result+""); // ajax결과값이 result가 되고 String값으로 보내기위해 ""를 넣어준다
		}

}

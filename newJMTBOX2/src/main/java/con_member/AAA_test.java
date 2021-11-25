package con_member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Z_counterDAO;

@WebServlet("/AAA_test")
public class AAA_test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Z_counterDAO dao = new Z_counterDAO();
		dao.Counter("contents", "c_view", "1727");
		
	}

}

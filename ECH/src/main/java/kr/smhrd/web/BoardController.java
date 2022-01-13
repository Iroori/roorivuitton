package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;



@Controller
public class BoardController {
	
		@Autowired
		BoardService service;
	
	
		@RequestMapping("/")
		public String main() { //localhost:8081/web/
			return "login";
		}
		
		@RequestMapping("/main")
		public String main1() {
			return "main";		
		}
		
		
		@RequestMapping("/stealcut")
		public String stealcut() {
			return "stealcut";
		}
		
		@RequestMapping("/peoplecount")
		public String peoplecount() {
			return "peoplecount";
		}
		@RequestMapping("/cctv")
		public String cctv() {
			return "cctv";
		}
		
		@RequestMapping("/peoplechart")
		public String peoplechart() {
			return "peoplechart";
		}
		
		
		@RequestMapping("/setting")
		public String setting() {
			return "setting";
		}
		
		@RequestMapping("/login")
		public String login() {
			return "login";		
		}
		
		@RequestMapping("/signUp")
		public String signUp() {
			return "signUp";
		}
		
		
		
		@PostMapping("/ELogin.do")
		public String login(User vo , HttpSession session) { // userId, userPwd
			User users = service.login(vo);
			if(users!=null) { // 인증 성공
				// 객체바인딩(세션바인딩)
				session.setAttribute("users", users);
			}
			return "main";
		}
		
		
		@GetMapping("/ELogout.do")
		public String Logout(HttpSession session) { 
			// 올래는 HttpSession session = request.getSession()
			session.invalidate(); // 세션 무효화
			return "login";
		}
		
		
		
		
	
		
//		@RequestMapping(value="/learning",method = {RequestMethod.GET,RequestMethod.POST})
//		public String learning() {
//			return "machine&deep";
//		}
//		
//		@RequestMapping(value="/index",method = {RequestMethod.GET,RequestMethod.POST})
//		public String index() {
//			return "index";
//		}
		
		
		
		
		
		
		
		
		
	
	
	

}

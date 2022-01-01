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

import kr.smhrd.domain.Board;
import kr.smhrd.domain.User;
import kr.smhrd.service.BoardService;



@Controller
public class BoardController {
	
		@Autowired
		BoardService service;
	
	
		@RequestMapping("/")
		public String main() { //localhost:8081/web/
			return "index";
		}
		
		
		@RequestMapping("/index10")
		public String index10() {
			return "index10";
		}
		
		@RequestMapping("/index11")
		public String index11() {
			return "index11";
		}
		
		@RequestMapping("/report")
		public String index12() {
			return "index12";
		}
		
		@RequestMapping("/index")
		public String index() {
			return "index";		
		}
		
		@RequestMapping("/login")
		public String login() {
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

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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
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
		
		
		@RequestMapping("/settings")
		public String setting() {
			return "settings";
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
			
			//List<Cctv> list =service.selectPeople(vo);
			
			if(users!=null) { // 인증 성공
				// 객체바인딩(세션바인딩)
				session.setAttribute("users", users);
				//session.setAttribute("selectPeople",list);
			}
			return "main";
		}
		
		
		@GetMapping("/ELogout.do")
		public String Logout(HttpSession session) { 
			// 올래는 HttpSession session = request.getSession()
			session.invalidate(); // 세션 무효화
			return "login";
		}
		
		// 이루리가 건드리고있는 거 
//		1) 젯슨에서 모델번호와 인원수 넘겨줌 o
//		2) BoardController에서 받음 o -> 예시로 벼 ㄴ수 만들어서 값넣었는데 왜안나와  개짱나넹 ㅡㅡ
//		3) BoardController에서 알고리즘 수행(DB에서 모델번호에 맞게 적정인원 select 해오기)
//		4) 인원수와 DB에서 가져온 적정인원 비교하기
//		5) 적정인원을 넘었을 시 알람 보내기(아마 두 개창 동시에 가능한지ㄴ는 찾아봐야할 거 같고, 일단 한개만 띄우는 걸로 초점 잡고 구현해보기)
//		--> 한개창에 띄우기 성공 시 2개창 동시에 띄우는 작업 해봅시다! 

//		@RequestMapping("/peoplecount.do")
//		   public String main(HttpServletRequest request,HttpSession session, Model model,User vo) {
//		      //String person = request.getParameter("person");
//				
//			String person = "45";
//			int person_n = Integer.parseInt(person);
//		      //String model_no = request.getParameter("model_no");
//			String cctv_serial = "kkaa";
//
//			List<Cctv> list =service.selectPeople(vo);
//			// System.out.println(list.get(0).getCctv_serial());
//			if( list.size()!=0){
//			    list.get(0).getCctv_serial();
//			    System.out.println(list.get(0).getCctv_serial());
//			}
//
//
//			if(list.get(10).getCctv_serial() == cctv_serial) {
//				if(Integer.parseInt(list.get(10).getCctv_total_user())<person_n) {
//					System.out.println("초과");
//				}else {
//					System.out.println("적정");
//				}
//			};
//			
//			 
//		      model.addAttribute("person", person_n);
//		      model.addAttribute("model_no", cctv_serial);
//		      return "peoplecount";
//		   }
//		
//		@RequestMapping("/뭔지모를 주소.do")
//		   public String func(HttpServletRequest request, Model model) {
//		      //String person = request.getParameter("person");
//			String person = "45";
//			int person_n = Integer.parseInt(person);
//			//jetson이 보내준 인원을 person_n에 넣었다고 가정
//			/*int 적정인원 = service.select_적정인원(가게);
//			if(적정인원 < preson_n) {
//				
//			}
	      //String model_no = request.getParameter("model_no");
//		/*	String model_no = "kkaa";
//		      System.out.println(person_n);
//		      System.out.println(model_no);
//		      model.addAttribute("person", person_n);
//		      model.addAttribute("model_no", model_no);*/
//		      return "peoplecount";
//		   }
//		
		@PostMapping("/setting.do")
		public String settingInsert(Cctv cvo) {
			//input name속성이 중복이라면 , 구분자를 기준으로 데이터가 하나로 묶여서 넘어온다.
			System.out.println(cvo);
			String[] cctv_location = cvo.getCctv_location().split(",");
			String[] cctv_total_user = cvo.getCctv_total_user().split(",");
			String[] company_bno = cvo.getCompany_bno().split(",");
			String[] user_id = cvo.getUser_id().split(",");
			String[] cctv_serial = cvo.getCctv_serial().split(",");
			List<Cctv> list = new ArrayList<Cctv>(); //업캐스팅
			for (int i = 0; i < cctv_serial.length; i++) {
				list.add(
						new Cctv(0, cctv_serial[i], cctv_location[i], cctv_total_user[i], null, user_id[i], company_bno[i], 0));
			}

			service.settingInsert(list);
			return "settings";
		}
		
		@RequestMapping(value="/test",method = RequestMethod.GET)
		public String showPeople(Model model,HttpSession session){
			User user = (User)session.getAttribute("users");
			List<Cctv> clist;
			clist = service.showPeople(user);
			model.addAttribute("clist",clist);
			return "peoplecount";
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

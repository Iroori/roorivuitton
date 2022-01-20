package kr.smhrd.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
import kr.smhrd.domain.Image;
import kr.smhrd.domain.Message;
import kr.smhrd.domain.User;

import kr.smhrd.service.BoardService;

@RestController // @ResponseBody  -> JSON : ajax 통신
public class RestBoardController {
	
	@Autowired
	BoardService service;
	
	// JSON ~~ Controller
	
	
	//@ResponseBody 생략 가능   ( 이유 : @RestController 이라는 JSON 형태로)
	//@PostMapping
		@GetMapping("/boardAjaxList.do")
		public @ResponseBody List<Board> boardAjaxList() {
			List<Board> list = service.boardList();
			// list->[{  },{  },{  }] (json) -> API (Gson api)
			return list;  // @ResponseBody : 객체를 -> JSON 변환시켜서 응답을 해라
			        // Jackson 라이브러리
		}
		
		@PostMapping("/boardAjaxInsert.do")
		public @ResponseBody void boardAjaxInsert(Board vo) {
			service.boardInsert(vo);	
		}
		
		@PostMapping("/boardAjaxContentUpdate.do")
		public @ResponseBody void boardAjaxContentUpdate(Board vo) {  // idx ,contents
			// service -> Mapper -> SQL
			service.boardContentUpdate(vo);
		}
		
		@GetMapping("/boardAjaxDelete.do")
		public void boardAjaxDelete(int idx) {
			service.boardDelete(idx);
		}
		
		@PostMapping("/boardAjaxTitleWriterUpdate.do")
		public @ResponseBody void boardAjaxTitleWriterUpdate(Board vo) {
			service.boardTitleWriterUpdate(vo);
		}
		
		
		
		@GetMapping("/boardAjaxCount.do")
		   public Board boardAjaxCount(int idx) {
		      service.boardCount(idx);//조회수를 누적
		      Board vo = service.boardGetCount(idx);//누적된 조회수 가져오는 부분
		      return vo;
		   }
		
		
		
		
		@PostMapping("/userInsert.do")
		public @ResponseBody void userInsert(User vo) { // userId, userPwd
			service.join(vo);
		}
		
		@PostMapping("/uesrAjaxIdCheck")	    
	    public @ResponseBody int idCheck(User vo){
			int cnt= service.idCheck(vo);
	        return cnt;
	    }
		
		@GetMapping("/ulAjaxList.do")
		public @ResponseBody List<Cctv> ulAjaxList(User vo,Model model) {
			List<Cctv> list = service.ulAjaxList(vo);
			String id = vo.getUser_id();
			System.out.println(id);
			model.addAttribute("list",list);			
			return list;  
		}
		
		@GetMapping("/timeAjaxList.do")
		public @ResponseBody List<Image> timeAjaxList(Model model) {
			List<Image> list1 = service.timeAjaxList();		
			model.addAttribute("list1",list1);
			return list1;  
		}
	
		
		
		@GetMapping("/imgAjaxList.do")
		public @ResponseBody List<Image> imgAjaxList(int num,Model model) {
			List<Image> list2 = service.imgAjaxList(num);
			System.out.println(num);
			model.addAttribute("list2",list2);
			return list2;  
		}
		
		
		// 이루리 2.Rest시작
		// 한번에 select 해올거니까 필요없어!
//		@GetMapping("/selectPeople.do")
//		public @ResponseBody List<Cctv> peoplecount(User vo, Model model){
//			List<Cctv> list =service.selectPeople(vo);
//			model.addAttribute("selectPeople", list);
//			System.out.println(model);
//			return list;
//		}
//		
		// 젯슨에서 받아온 model DB에 update 할 로직
		@RequestMapping("/peoplecount.do")
		   public @ResponseBody String main(HttpServletRequest request, Cctv cvo) {
		      // 실제 젯슨에서 받아올 때 필요한 로직
//				String person = request.getParameter("person");
//				int cctv_total_user = Integer.parseInt(person);
//				String cctv_serial = request.getParameter("model_no");
		      	String person = "100";
		      	int cctv_cur_user = Integer.parseInt(person);
		      	String cctv_serial = "smh02";
		      	System.out.println(cctv_cur_user);
		      	System.out.println(cctv_serial);
		      	
		      // db에 업데이트만하기
		      	
		      	service.updateJetson(cctv_cur_user,cctv_serial);
		      	System.out.println();
		      
		      return "ok";
		   }
		
		

		@RequestMapping("/currentpeople.do")
		   public @ResponseBody List<Cctv> currentpeople(HttpServletRequest request, HttpSession session) {
		      //String cctv_serial = request.getParameter("model_no");
		      User user = (User)session.getAttribute("users");
		      
		      //db에 셀렉트
		      List<Cctv> list=service.selectcurrent(user);
		      System.out.println(list);
		      //System.out.println(cctv_serial);
		      //select 인원수, cctv_serial from cctv where cctv_serial = #{cctv_serial}
		      
		      
		      //model.addAttribute("person", cctv_total_user);
		      //model.addAttribute("model_no", cctv_serial);
		     
		      
		      return list;
		   }
		
		@RequestMapping("/peopleMessage.do")
		public void peopleMessage(HttpServletRequest request,HttpSession session, Message msg) {
			
			String msg_content="적정 인원 초과";
			String msg_location=request.getParameter("cctv_location");
			String cctv_no_request = request.getParameter("cctv_no");
			int cctv_no = Integer.parseInt(cctv_no_request);
			String user_id= request.getParameter("user_id");
			String msg_type = request.getParameter("msg_type");
			Message msg2 = 
					new Message(0,msg_content,msg_location,null,cctv_no,user_id,msg_type,"u");
			service.peopleMessage(msg2);
			System.out.println(msg2);
		}
		
}
//			@GetMapping("/selectPeople.do")
//		public @ResponseBody List<Board> selectPeople(받은값 이거를 User vo or @Parm(String user_id 머 이거로 받을수 있는 으흠..네그러고서비스로가나요?.) {
//			List<Board> list = service.selectPeople(받은값 넣고);
//			
//			return list;  
//			       아! 방식? url 받는 방식 ㅇㅇㅇ 오키오키
//		}
		
//		
//
//}

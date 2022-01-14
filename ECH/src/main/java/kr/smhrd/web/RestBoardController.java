package kr.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
import kr.smhrd.domain.Image;
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
		public @ResponseBody List<Cctv> ulAjaxList(Model model) {
			List<Cctv> list = service.ulAjaxList();
			
			return list;  
		}
		
		@GetMapping("/timeAjaxList.do")
		public @ResponseBody List<Image> timeAjaxList(Model model) {
			List<Image> list1 = service.timeAjaxList();
			
			return list1;  
		}
		
		
		

}

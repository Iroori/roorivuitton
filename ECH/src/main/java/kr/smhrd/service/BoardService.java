package kr.smhrd.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
import kr.smhrd.domain.Image;
import kr.smhrd.domain.Message;
import kr.smhrd.domain.User;

import kr.smhrd.mapper.BoardMapper;

@Service
public class BoardService { // BoardController
	
	@Autowired
	BoardMapper mapper;
	
	
		public List<Board> boardList(){
			List<Board> list= mapper.boardList();
			return list;
		};
		public void boardInsert(Board vo) {
			mapper.boardInsert(vo);
		}; 
		public Board boardContent(int idx) {
			Board vo = mapper.boardContent(idx);
			mapper.boardCount(idx); //조회수 증가
			return vo;
		}; 		
		
		public void boardDelete(int idx) {
			mapper.boardDelete(idx);
		}; 
		
		public void boardUpdate(Board vo) {
			mapper.boardUpdate(vo);			
		}; 		
		
		public void boardCount(int idx) {
			mapper.boardCount(idx);
		}; 
		
		public void boardContentUpdate(Board vo) {
			mapper.boardContentUpdate(vo);
		};
		
		public void boardTitleWriterUpdate(Board vo) {
			mapper.boardTitleWriterUpdate(vo);
		};
		
		
		// 추가 (조회수를 가져오기)
		public Board boardGetCount(int idx) {
			Board vo = mapper.boardGetCount(idx);
			return vo;
		}
		
		
		public User login(User vo) {
			User user = mapper.login(vo);
			return user;
		}
		
		
		public void join(User vo) {
			mapper.join(vo);
			
		}
		
		public int idCheck(User vo) {
	        int cnt = mapper.idCheck(vo);
	        return cnt;
	    }
		
		public List<Cctv> ulAjaxList(User vo){
			List<Cctv> list= mapper.ulAjaxList(vo);
			
			
			return list;
		};
		
		
		
		
		public List<Image> timeAjaxList(){
			List<Image> list1= mapper.timeAjaxList();
			return list1;
		};
		
		public void settingInsert(List<Cctv> list) {
			
			mapper.settingInsert(list);
		}
		
		
		public List<Image> imgAjaxList(int num){
			List<Image> list1= mapper.imgAjaxList(num);
			return list1;
		}
		
		// 이루리 3. service까지옴
		public List<Cctv> selectPeople(User vo) {
			List<Cctv> list= mapper.selectPeople(vo);
			return list;
		}
		public void updateJetson(@Param("cctv_cur_user") int cctv_cur_user,@Param("cctv_serial") String cctv_serial) {
			System.out.println(cctv_cur_user);
			mapper.updateJetson(cctv_cur_user,cctv_serial);
			
		}
		public List<Cctv> selectcurrent(User user) {
			List<Cctv> list = mapper.selectcurrent(user);
			return list;
		}
		public void peopleMessage(Message msg2) {
			mapper.peopleMessage(msg2);
		}
		public List<Cctv> showPeople(User user) {
			List<Cctv> clist = mapper.showPeople(user);
			return clist;
		};
		
		// 이루리
//		public void selectPeople(List<Cctv> list) {
//			mapper.selectPeople(list);
//		}
		// jsp .do url을타고? restcontroller로 가서??@맵핑 ->url 받는방식  으로 data받은걸 넣어준다.
		// service에다가 여기는 같은 imaAjax 이런걸로  그래서 서비스가가지고 mapper에다가 또 넣어준다
		// mapper에 쿼리문작성한다 끝?? 흐름은 맞는거같아요
	//저오늘은이거공부하고가곘습니다 감샇바니닼ㅋㅋㅋㅋㅋㅋㅋ 넹
}

package kr.smhrd.service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
import kr.smhrd.domain.Image;
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
		};
	
}

package kr.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

// 게시판 (Object) -> 번호, 제목, 내용, 작성자, 작성일 , 조회수 -> property(프로퍼티) 속성
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Board {
	private int idx; // 번호
	private String userId;
	private String title; // 제목
	private String contents; // 내용
	private String writer; // 작성자
	private String indate; // 작성일
	private int count; // 조회수
	private int comment; //댓글수
	
	// default 생성자
	//public Board() {    }
	
	
	

}

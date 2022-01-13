package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.domain.Board;

import kr.smhrd.domain.User;



// JDBC(Java코드 + SQL) : 생산성이 떨어진다 (개발시간이 많이 걸린다), 유지보수가 어렵다.

// MyBatis Framework     : http://mybatis.org
// Spring JPA  : Java Persistence API

// Spring(Java코드 <--> SQL쿼리 분리)

//@Mapper  (생략)
public interface BoardMapper { // interface BoardMapper <---> BoardMapper.xml (Mapper XML file)
	// DB연결 -> 별도로 한다.(X)
	// 게시판 리스트를 가져오는 동작(Method)
	
	// 방법 1
	// 추상메서드
	public List<Board> boardList(); // SQL쿼리와 연결 -> select * from board
	public void boardInsert(Board vo); // SQL --> insert~
	public Board boardContent(int idx); // SQL -> select ~ where idx
	
	
	// 방법 2
	@Delete("delete from python_board where idx=#{idx}")
	public void boardDelete(int idx); // SQL -> delete~

	@Update("update python_board set title=#{title},contents=#{contents} where idx=#{idx}")
	public void boardUpdate(Board vo); // SQL -> update~
	
	@Update("update python_board set count=count+1 where idx=#{idx}")
	public void boardCount(int idx); // SQL -> update~
	
	@Update("update python_board set contents=#{contents} where idx=#{idx}")
	public void boardContentUpdate(Board vo); // SQL -> update~
	
	@Update("update python_board set title=#{title} where idx=#{idx}")
	public void boardTitleWriterUpdate(Board vo); // SQL -> update~
	
	 @Select("select * from python_board where idx=#{idx}")
	 public Board boardGetCount(int idx);
	 
	 @Select("select * from member where userId=#{userId} and userPwd=#{userPwd}")
	 public User login(User vo);
	 
	// @Insert("insert into pop_user values(#{userId},#{userPwd},#{userName})")
	
	 public void join(User vo);
	 
	@Select("SELECT COUNT(userId) FROM member WHERE userId= #{userId}")
	public int idCheck(User vo);
	
	

}

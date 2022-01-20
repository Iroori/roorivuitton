package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.smhrd.domain.Board;
import kr.smhrd.domain.Cctv;
import kr.smhrd.domain.Image;
import kr.smhrd.domain.Message;
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
	 
	 
	 
	 
	 @Select("select * from member where user_id=#{user_id} and user_pwd=#{user_pwd}")
	 public User login(User vo);
	 
	// @Insert("insert into pop_user values(#{userId},#{userPwd},#{userName})")
	
	 public void join(User vo);
	 
	@Select("SELECT COUNT(user_id) FROM member WHERE user_id= #{user_id}")
	public int idCheck(User vo);
	
	@Select("select * from cctv where user_id=#{user_id}")
	public List<Cctv> ulAjaxList(User vo);
	
	
	@Select("select * from image")
	public List<Image> timeAjaxList();
	
	// xml insert~
		public void settingInsert(List<Cctv> list); 
	 
	 @Select("select img_no,img_file from image where img_no=#{num}")
		public List<Image> imgAjaxList(int num);
	 
	@Select("select cctv_total_user,cctv_serial from cctv where user_id=#{user_id}") 
	public List<Cctv> selectPeople(User vo);
	
	// 적정인원관리
	public void updateJetson(@Param("cctv_cur_user") int cctv_cur_user,@Param("cctv_serial")String cctv_serial);
	
	@Select("select * from cctv where user_id=#{user_id}")
	public List<Cctv> selectcurrent(User user);
	
	public void peopleMessage(Message msg2);
	
	@Select("select * from cctv where user_id=#{user_id}")
	public List<Cctv> showPeople(User user);
	
	

	 // 이루리
	 
//	@Select("select cctv_total_user from cctv where cctv_serial=#{115}")
//	public List<Cctv> selectPeople(List<Cctv> list);
}

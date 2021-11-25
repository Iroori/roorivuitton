package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MyConentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;
	
	//1. myContents보기(wish, seen, like, share 에 따라)
	// 배열의 타입이 mycontent가 아니라 content임에 주의
	public ArrayList<ContentVO> showMyContents(String which_content_id, String member_id) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> myContentsList = new ArrayList<ContentVO>();
		
		try {
			String sql = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.my_date, m.mycontent_id from mycontents m, Contents c where c.content_id = m."+which_content_id+" and m.member_id = ?";

			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));
				vo.setMy_date(rs.getDate(6));
				vo.setMyContent_id(rs.getInt(7));

				myContentsList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return myContentsList;
	}
	
	
	// 2. myContents 추가하기 (wish, seen, like, share 에 따라)
	public ArrayList<ContentVO> updateMyContent(String which_content_id, String member_id, String content_id) {
		int cnt = 0;
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> myContentsList = new ArrayList<ContentVO>();
		
		try {
			String sql = "insert into mycontents (mycontent_id, member_id, "+which_content_id+", my_date) values(mycontents_SEQ.NEXTVAL, ?, ?, sysdate)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			psmt.setString(2, content_id);
			cnt = psmt.executeUpdate();
			
			//2-1.좋아요 작품이 추가된 경우, 해당 작품의 좋아요 수 +1 하기 
			if(which_content_id.equals("like_content_id")) {

				String sql1 = "update contents set c_like = c_like + 1 where content_id = ?";
				psmt = j.conn.prepareStatement(sql1);
				psmt.setString(1, content_id);
				cnt += psmt.executeUpdate();
			}
			System.out.println(cnt);
			
			//2-2.추가한 작품 출력화면에 반영하기
			String sql2 = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.my_date, m.mycontent_id from mycontents m, Contents c where c.content_id = m."+which_content_id+" and m.member_id = ?";

			psmt = j.conn.prepareStatement(sql2);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));
				vo.setMy_date(rs.getDate(6));
				vo.setMyContent_id(rs.getInt(7));

				myContentsList.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		return myContentsList;
	}
	
	
	// 3.myContents 삭제하기
	public ArrayList<ContentVO> deleteMyContent(String which_content_id, String myContent_id, String content_id, String member_id) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> myContentsList = new ArrayList<ContentVO>();
				
		try {
			String sql1 = "delete mycontents where mycontent_id = ?";
			psmt = j.conn.prepareStatement(sql1);
			psmt.setString(1, myContent_id);
			psmt.executeUpdate();
			
			//3-1. like 취소인 경우 contents 테이블의 해당작품 like수 -1 하기 
			if(rs.next()) {
				String sql2 = "update contents set c_like = c_like -1 where content_id = ?";
				psmt = j.conn.prepareStatement(sql2);
				psmt.setString(1, content_id);
				psmt.executeUpdate();
			}
			
			//3-2. 삭제 결과 출력화면 반영하기
			String sql3 = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.my_date, m.mycontent_id from mycontents m, Contents c where c.content_id = m."+which_content_id+" and m.member_id = ?";

			psmt = j.conn.prepareStatement(sql3);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));
				vo.setMy_date(rs.getDate(6));
				vo.setMyContent_id(rs.getInt(7));

				myContentsList.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		return myContentsList;
	}
	
	
	
/*	
	// 개별 코드
	// wish작품 보기
	public ArrayList<ContentVO> myWishContents(String member_id) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> myWishContentsList = new ArrayList<ContentVO>();

		try {
			String sql = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.wish_date from mycontents m, Contents c where c.content_id = m.content_id and m.member_id = ?";

			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));
				vo.setWish_date(rs.getDate(6));

				myWishContentsList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return myWishContentsList;
	}
	
	//본 작품 보기
	public ArrayList<ContentVO> mySeenContents(String member_id) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> mySeenContentsList = new ArrayList<ContentVO>();

		try {
			String sql = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.seen_date from mycontents m, Contents c where c.content_id = m.seen_content_id and m.member_id = ?";

			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));
				vo.setSeen_date(rs.getDate(6));

				mySeenContentsList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return mySeenContentsList;
	}
	
	//좋아요 한 작품 보기
		public ArrayList<ContentVO> myLikeContents(String member_id) {
			j.conn();
			ContentVO vo = null;
			ArrayList<ContentVO> myLikeContentsList = new ArrayList<ContentVO>();

			try {
				String sql = "select c.content_id, c.title, c.c_thumbnail, c.c_like, c.tournament_point, m.like_date from mycontents m, Contents c where c.content_id = m.like_content_id and m.member_id = ?";

				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, member_id);
				rs = psmt.executeQuery();

				while (rs.next()) {
					vo = new ContentVO();
					vo.setContent_id(rs.getInt(1));
					vo.setTitle(rs.getString(2));
					vo.setC_thumbnail(rs.getString(3));
					vo.setC_like(rs.getInt(4));
					vo.setTournament_point(rs.getInt(5));
					vo.setLike_date(rs.getDate(6));

					myLikeContentsList.add(vo);
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				j.close();
			}

			return myLikeContentsList;
		}
	
	*/
}

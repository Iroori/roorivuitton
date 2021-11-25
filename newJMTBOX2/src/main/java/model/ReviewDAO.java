package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReviewDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;
	private String sql;

	// 1.해당 작품 리뷰 보기
	public ArrayList<ReviewVO> showReviewList(String content_id) {
		j.conn();
		ReviewVO vo = null;
		ArrayList<ReviewVO> ReviewList = new ArrayList<ReviewVO>();

		try {
			sql = "select * from reviews where content_id = ? and review_done = 1";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, content_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ReviewVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
				ReviewList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ReviewList;

	}
	// 2.나의 리뷰 보기
	public ArrayList<ReviewVO> showMyReviewList(String member_id) {
		j.conn();
		ReviewVO vo = null;
		ArrayList<ReviewVO> MyReviewList = new ArrayList<ReviewVO>();

		try {
			sql = "select * from reviews where member_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ReviewVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getString(9));
				vo.setReview_done(rs.getInt(10));
				MyReviewList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return MyReviewList;

	}
	
	// 3.리뷰 (임시)저장하기
	// 수정 후 (임시)저장이면 isNew를 0으로 신규면 1 
	public void updateReview(byte isNew, ReviewVO vo) {
		j.conn();

		try {
			if(isNew == 1) {
				String sql = "INSERT INTO Review values(Review_SEQ.NEXTVAL, ?, ?, ?, ?, sysdate, 0, 0, ?, ?)";
				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, vo.getMemberId());
				psmt.setInt(2, vo.getContentId());
				psmt.setString(3, vo.getcTumbnail());
				psmt.setString(4, vo.getReview());
				psmt.setString(5, vo.getTag());
				psmt.setInt(6, vo.getReview_done());

			} else if(isNew == 0) {
				String sql = "INSERT INTO Review (member_id, review, tag, review_done) values(?, ?, ?, ?) where review_id=?";
				//수정하는 거면 리뷰 like, share수 등 기존에 값이 있는 것들 제외
				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, vo.getMemberId());
				psmt.setString(2, vo.getReview());
				psmt.setString(3, vo.getTag());
				psmt.setInt(4, vo.getReview_done());
				psmt.setInt(5, vo.getReviewId());

			}
			psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			j.close();
		}
	}
	
	
	// 4.리뷰 수정하기
	// 해당페이지에서 알아서... 
	
	// 5.리뷰 삭제하기
	public void deleteReview(String Review_id) {
		j.conn();
		try {
			String sql = "delete from Review where Review_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, Review_id);
			psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	
	
	
}

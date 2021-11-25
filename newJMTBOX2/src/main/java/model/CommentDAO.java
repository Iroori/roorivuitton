package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CommentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 해당 토너먼트 전체 댓글 보이기
	public ArrayList<CommentVO> showComments(int tournament_id) {
		j.conn();
		CommentVO vo = null;
		ArrayList<CommentVO> commentList = new ArrayList<CommentVO>();

		try {
			String sql = "select * from comments where tournament_id = ?";
			// comment_id, tournament_id, member_id, comments, comment_date
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, String.valueOf(tournament_id));

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new CommentVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDate(5));
				commentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return commentList;
	}

	// 댓글 달기(댓글 업데이트)

	public ArrayList<CommentVO> updateComments(int tournament_id, String member_id, String comments) {
		j.conn();
		CommentVO vo = null;
		ArrayList<CommentVO> commentList = new ArrayList<CommentVO>();

		try {
			String sql = "INSERT INTO comments values(comments_SEQ.NEXTVAL, ?, ?, ?, sysdate)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, String.valueOf(tournament_id));
			psmt.setString(2, member_id);
			psmt.setString(3, comments);

			int cnt = psmt.executeUpdate();

			if (cnt > 0) {
				String sql1 = "select * from comments where tournament_id = ?";
				// comment_id, tournament_id, member_id, comments, comment_date
				psmt = j.conn.prepareStatement(sql1);
				psmt.setString(1, String.valueOf(tournament_id));

				rs = psmt.executeQuery();

				while (rs.next()) {
					vo = new CommentVO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDate(5));
					commentList.add(vo);
				}
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			j.close();
		}
		return commentList;

	}
}

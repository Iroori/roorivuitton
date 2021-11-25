package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NoticeDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 1.공지사항 보이기
	// notice_id, subject, notice, notice_date, n_img, n_file, n_view
	public ArrayList<NoticeVO> showNoticeList(boolean isAdmin) {
		j.conn();
		NoticeVO vo = null;
		ArrayList<NoticeVO> noticeList = new ArrayList<NoticeVO>();

		try {
			String sql = null;
			if (isAdmin == true) {
				sql = "select * from notice";
			} else {
				sql = "select * from notice where open = 1";
			}
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5),
						rs.getString(6), rs.getInt(7), rs.getInt(8));
				noticeList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return noticeList;

	}

	// 2.신규 및 수정 등록하기
	//(신규든 수정이든 비공개가 디폴트이므로 작성 후 공개설정으로 바꿔야함. 
	// 수정인 경우 기존 글은 비공개로 돌리고 수정된 내용을 신규로 등록함)
	public int updateNotice(boolean isNew, NoticeVO vo) {
		j.conn();
		int cnt = 0;

		try {
			if (!isNew) {
				String sql = "update notice set open = 0 where notice_id=?";
				psmt = j.conn.prepareStatement(sql);
				psmt.setInt(1, vo.getNoticeId());
			}

			String sql = "INSERT INTO notice (notice_id, subject, notice, notice_date, n_ing, n_file, open) values(notice_SEQ.NEXTVAL, ?, ?, sysdate, ?, ?, 0)";

			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, vo.getSubject());
			psmt.setString(2, vo.getNotice());
			psmt.setString(3, vo.getnImg());
			psmt.setString(4, vo.getnFile());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			j.close();
		}
		return cnt;
	}
	
	// 3.공개 비공개 전환
	public void isOpen(int open, String notice_id) {
		j.conn();
		
		try {
			
			String sql = "INSERT INTO notice (open) values(?) where notice_id = ?";

			psmt = j.conn.prepareStatement(sql);
			psmt.setInt(1, open);
			psmt.setString(1, notice_id);
			psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			j.close();
		}
	}

	// 4. 삭제하기
	public int deleteNotice(String notice_id) {
		int cnt = 0;
		j.conn();
		try {
			String sql = "delete from notice where notice_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, notice_id);
			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cnt;
	}

	

}

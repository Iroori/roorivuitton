package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ContentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 1.寃��깋 議곌굔�뿉 留욌뒗 紐⑤뱺 肄섑뀗痢� 湲곕낯 �젙蹂� 蹂닿린
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showContentsByFilters(String where) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select content_id, title, c_thumbnail, c_like, tournament_point from Contents " + where;

			psmt = j.conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

	// 2.理쒓렐 �븳�떖 �궡 �옉�뭹 蹂닿린
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showLatestContents() {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select content_id, title, c_thumbnail, c_like, tournament_point from Contents where release >= trunc(add_months(sysdate,-1)) order by release desc";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

	// 3.�씤湲� �옉�뭹(�겢由� �닔 �넂��) 36媛� 蹂닿린
	// content_id, title, c_thumbnail, c_like, tournament_point
	public ArrayList<ContentVO> showHotContents() {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();

		try {
			String sql = "select * from (select content_id, title, c_thumbnail, c_like, tournament_point, c_view from Contents order by c_view desc) where rownum <= 36";

			psmt = j.conn.prepareStatement(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));
				vo.setC_like(rs.getInt(4));
				vo.setTournament_point(rs.getInt(5));

				ContentList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

	// 4.�옉�뭹 �긽�꽭蹂닿린
	public ContentVO showContentInfo(int content_id) {

		j.conn();
		ContentVO vo = null;

		try {
			String sql = "select * from contents where content_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setInt(1, content_id);
			rs = psmt.executeQuery();

			if (rs.next()) {
				vo = new ContentVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getInt(11), rs.getInt(12), rs.getInt(13), rs.getInt(14), rs.getString(15), rs.getString(17));
			}
		} catch (NumberFormatException e) {

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return vo;
	}

	// 5.�옖�뜡�넗�꼫癒쇳듃 留뚮뱾湲�(DB���옣)
	public ArrayList<ContentVO> createRanTour(String tournament_name, String member_id) {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentVO vo = null;
		j.conn();

		try {
			String sql = "SELECT * from ( select * from contents ORDER BY dbms_random.value )" + " where rownum <= 16";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt("content_id"));
				vo.setTitle(rs.getString("title"));
				vo.setC_thumbnail(rs.getString("c_thumbnail"));
				vo.setC_like(rs.getInt("c_like"));
				vo.setTournament_point(rs.getInt("TOURNAMENT_POINT"));

				al.add(vo);
			}

			String sql1 = "insert into tournaments values(tournaments_seq.nextval, ?, ?, sysdate, 0, 0, 0, 16)";
			PreparedStatement psmt1 = j.conn.prepareStatement(sql1);
			psmt1.setString(1, tournament_name);
			psmt1.setString(2, member_id);
			psmt1.executeUpdate();

			int jo = 0;
			int num = 0;
			int isRight = 0;

			for (ContentVO i : al) {
				num++;
				if (num % 2 == 1) {
					jo++;
					isRight = 0;
				} else {
					isRight = 1;
				}

				System.out.println("jo�뒗" + jo + " ,isRight=" + isRight);

				String sql2 = "insert into tour_contents values ((select max(tournament_id) from tournaments), 16, ?, ?, ?, ?)";
				PreparedStatement psmt2 = j.conn.prepareStatement(sql2);
				psmt2.setInt(1, jo);
				psmt2.setInt(2, isRight);
				psmt2.setInt(3, i.getContent_id());
				psmt2.setString(4, i.getC_thumbnail());
				psmt2.executeUpdate();

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return al;
	}

	public ArrayList<ContentVO> enjoyRanTour() {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentVO vo = null;
		j.conn();

		try {
			String sql = "SELECT * from ( select * from contents ORDER BY dbms_random.value )" + " where rownum <= 16";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt("content_id"));
				vo.setTitle(rs.getString("title"));
				vo.setC_thumbnail(rs.getString("c_thumbnail"));
				vo.setC_like(rs.getInt("c_like"));
				vo.setTournament_point(rs.getInt("TOURNAMENT_POINT"));

				al.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return al;
	}

	// 6. �옖�뜡�넗�꼫癒쇳듃 利먭린湲�(DB���옣X)

	public ArrayList<ContentVO> contents_b(String title, String c_thumbnail) {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		ContentVO vo = null;
		try {
			j.conn();
			String sql = "SELECT title, c_thumbnail from (select * from contents ORDER BY dbms_random.value) where rownum <= 100 and content_id in('3829', '3675', '3712', '3658', '3843', '3614', '3746', '3687', '3647', '3858', '3824', '3754', '3724', '3844', '3655', '3859')";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				title = rs.getString("title");
				c_thumbnail = rs.getString("c_thumbnail");

				vo = new ContentVO(title, c_thumbnail);
				al.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return al;
	}

	public ArrayList<ContentVO> showImg(int rowNum) {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		try {
			j.conn();
			String sql = "select * from (select rownum as num, content_id, title, platform, c_thumbnail, genre from contents) where num between ? and ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setInt(1, rowNum);
			psmt.setInt(2, rowNum + 17);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int content_id = rs.getInt("content_id");
				String title = rs.getString("title");
				String platform = rs.getString("platform");
				String poster = rs.getString("c_thumbnail");
				String genre = rs.getString("genre");

				ContentVO vo = new ContentVO(content_id, title, platform, poster, genre);

				al.add(vo);

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return al;
	}

	public ArrayList<ContentVO> imgShow() {
		ArrayList<ContentVO> al = new ArrayList<ContentVO>();
		try {
			j.conn();
			String sql = "select content_id, title, nvl(platform, 'Cinema') platform, c_thumbnail, genre from contents where rownum<=18";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				int content_id = rs.getInt("content_id");
				String title = rs.getString("title");
				String platform = rs.getString("platform");
				String poster = rs.getString("c_thumbnail");
				String genre = rs.getString("genre");

				ContentVO vo = new ContentVO(content_id, title, platform, poster, genre);

				al.add(vo);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return al;
	}

	
	// 검색
	public ArrayList<ContentVO> showContentsByTitleOrTag(String searchWord) {
		j.conn();
		ContentVO vo = null;
		ArrayList<ContentVO> ContentList = new ArrayList<ContentVO>();
		try {
			String sql = null;
			if (searchWord.startsWith("#")) {
				sql = "select content_id, title, c_thumbnail from Contents where tag like ?";
				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, "%" + searchWord + "%");
			} else {
				sql = "select content_id, title, c_thumbnail from Contents where title like ? or genre like ? or director like ? or actor like ?";
				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, "%" + searchWord + "%");
				psmt.setString(2, "%" + searchWord + "%");
				psmt.setString(3, "%" + searchWord + "%");
				psmt.setString(4, "%" + searchWord + "%");
			}

			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ContentVO();
				vo.setContent_id(rs.getInt(1));
				vo.setTitle(rs.getString(2));
				vo.setC_thumbnail(rs.getString(3));

				ContentList.add(vo);
			}
			
			for(int i = 0; i<ContentList.size(); i++) {
				
				System.out.println(ContentList);
			}
			System.out.println("-------------------------------------");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return ContentList;
	}

}

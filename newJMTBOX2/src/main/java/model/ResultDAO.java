package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ResultDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 1. 참여한 토너먼트 조회
	public ArrayList<ResultVO> showMyJoinedTournaments(String member_id) {
		j.conn();
		ResultVO vo = null;
		ArrayList<ResultVO> joinedTournamentsList = new ArrayList<ResultVO>();

		try {
			// 우승작썸네일(t), 토너먼트제목(t), 참여날짜(r), 우승작id(t), 토너먼트id(r)

			String sql = "select r.tournament_file, t.tournament_name, r.game_date, r.content_id, t.tournament_id "
					+ "from tournaments t, results r"
					+ "where t.tournament_id = r.tournament_id "
					+ "and r.member_id = ? "  //?
					+ "and r.stage = 2 "
					+ "and r.iswin = 1";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, member_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				vo = new ResultVO(rs.getString(1), rs.getString(2), rs.getDate(3), rs.getInt(4), rs.getInt(5));
				joinedTournamentsList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return joinedTournamentsList;
	}

	// 2.토너먼트 모든 결과 보기
	public ArrayList<ResultVO> showResults(String tournament_id) {
		/*
		 * select c작품이미지, c작품제목, r선택받은수(count(iswin), 넘겨줄값 r작품id from where t_id = ? 정렬
		 * : count desc
		 */
		j.conn();
		ArrayList<ResultVO> resultsList = new ArrayList<ResultVO>();

		try {
			String sql = "select c.c_thumbnail, c.title, count(r.iswin) cnt, c.content_id "
					+ "from contents c, results r "
					+ "group by c.c_thumbnail, c.title, c.content_id "
					+"where c.content_id = r.content_id and tournament_id = ? order by cnt desc";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, tournament_id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ResultVO vo = new ResultVO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4));
				resultsList.add(vo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return resultsList;
	}

	// 3. 한번의 선택이 있을 때마다 토너먼트 참여 결과 저장하기 - 
	public void updateResult(String t_id, String m_id, String stage, String jo, String isright, String c_id, String iswin, String tournament_file) {
		j.conn();
		//자동 : r_id, g_date
		//변하지 않는 값 : t_id, m_id 
		//변하는 값 : stage, jo, isright, c_id, iswin, tournament_file
		
		try {
			String sql = "insert into results values(results_seq.nextval, ?, ?, sysdate, ?, ?, ?, ?, ?, ?)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, t_id);
			psmt.setString(2, m_id);
			psmt.setString(3, stage);
			psmt.setString(4, jo);
			psmt.setString(5, isright);
			psmt.setString(6, c_id);
			psmt.setString(7, iswin);
			psmt.setString(8, tournament_file);
			
			psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		
	}
	
	
}

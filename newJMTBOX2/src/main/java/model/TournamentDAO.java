package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TournamentDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;
	private String sql;
	//토너먼트만들기
	//작품검색, 검색결과 넘겨주기 스크립트에서 받아서 확정하고, 그 값을 다시 넘겨주기
	// 1. 참여수 많은 토너먼트 15개 보이기
	public ArrayList<TournamentVO> showHotTournament(){
		j.conn();
		ArrayList<TournamentVO> hotTourList= new ArrayList<TournamentVO>();
		TournamentVO vo = null;
		
		try {
			sql = "select * from (select tournament_id, tournament_name, "
					+ "thumbnail from tournaments order by t_join desc) where rownum <= 15";
			psmt = j.conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				vo = new TournamentVO(rs.getInt(1),rs.getString(2),rs.getString(3));
				hotTourList.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		
		return hotTourList;
	}
	
	
	// 2.토너먼트 게임위한 기본 정보 받아오기
	public ArrayList<TournamentVO> initialGameInfo(int tournament_id) {
		j.conn();
		ArrayList<TournamentVO> initialGameInfoList = new ArrayList<>();
		TournamentVO vo = null;
		
		try {
			sql = "select * from tour_contents where tournament_id = ?";
			
			psmt = j.conn.prepareStatement(sql);
			psmt.setInt(1, tournament_id);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				vo = new TournamentVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7));
				initialGameInfoList.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return initialGameInfoList;
	}
	
	
	// 3. 해당 작품이 출전한 토너먼트 게임 보기
	public ArrayList<TournamentVO> showThisContentTournament(int content_id){
		j.conn();
		ArrayList<TournamentVO> thisTourList= new ArrayList<TournamentVO>();
		TournamentVO vo = null;
		
		try {
			sql = "select tournament_id, tournament_name, thumbnail from tournaments where tournament_id in (select DISTINCT(tournament_id) from tour_contents where content_id = ?)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setInt(1, content_id);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				vo = new TournamentVO(rs.getInt(1),rs.getString(2),rs.getString(3));
				thisTourList.add(vo);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		
		return thisTourList;
	}
	
	
}

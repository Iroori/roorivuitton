package model;

import java.sql.PreparedStatement;

public class Z_counterDAO {

	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;

	// 조회수 카운터 : 작품상세페이지 이동시마다 +1
	public int Counter(String table, String col, String id) {
		j.conn();
		int cnt=0;
		String str = table.substring(0, table.length()-1);
		
		try {
			String sql = "update "+ table + " set "+col+" = "+col+" + 1 where "+str+"_id = "+id;
//			String sql = "update ? set ? = ? +1 where ?_id = ?"
			psmt = j.conn.prepareStatement(sql);
//			psmt.setString(1, table);
//			psmt.setString(2, col);
//			psmt.setString(3, col);
//			psmt.setString(4, str);
//			psmt.setInt(5, id);
			
			cnt = psmt.executeUpdate();
			if(cnt>0) {
				System.out.println("업데이트 성공");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("실패");
		} finally {
			j.close();
		}
		return cnt;
	}

}

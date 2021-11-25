package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class MemberDAO {
	
	Z_jdbc j = new Z_jdbc();
	private PreparedStatement psmt;
	private ResultSet rs;

	// 
	public MemberVO join(String id, String pw, String nick) {
		MemberVO vo=null;
		j.conn();
		
		try {
			String sql = "insert into members values(?,?,?,sysdate)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);

			int cnt = psmt.executeUpdate();
			//
			if(cnt>0) {
				vo = login(id, pw);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return vo;
	}

	// 
		public MemberVO login(String id, String pw) {
			j.conn();
			MemberVO vo = null;
			
			try {
				String sql = "select member_id, nickname, join_date from members where member_id=? and pw=?";
				// member_id, pw, nickname, join_date
				psmt = j.conn.prepareStatement(sql);
				psmt.setString(1, id);
				psmt.setString(2, pw);

				rs = psmt.executeQuery();
				if (rs.next()) {
					vo = new MemberVO();
					vo.setId(rs.getString(1));
					vo.setNick(rs.getString(2));
					vo.setDate(rs.getDate(3));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				j.close();
			}
			return vo;
		}
		
	// 
	public int checkId(String id) {
		j.conn();
		int idCheck = 0; // 
		try {
			String sql = "select * from members where member_id = ?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next()) {
				idCheck = 0;
			} else {
				idCheck = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		return idCheck;
	}

	// 
	public int checkNick(String nick) {
		j.conn();
		int nickCheck = 0;
		try {
			String sql = "select * from members where nickname=?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, nick);

			rs = psmt.executeQuery();

			if (rs.next()) {
				nickCheck = 0;
			} else {
				nickCheck = 1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}

		return nickCheck;
	}

	

	// 
	public int checkPw(String id, String pw) {
		j.conn();
		int result=0;
		try {
			String sql = "select member_id nickname from members where member_id=? and pw=?";
			// member_id, pw, nickname, join_date
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();
			if (rs.next()) {
				result=1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		
		return result;
	}
	
	// -pw
	public int updatePw(String id, String newPw) {
		j.conn();
		int cnt = 0;

		try {
			String sql = "update members set pw=? where member_id=id?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, newPw);
			psmt.setString(2, id);

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			System.out.println("�닔�젙�떎�뙣");
			e.printStackTrace();

		} finally {
			j.close();
		}
		return cnt;

	}
	//-nickName
	public MemberVO updateNick(String id, String newNickName, Date join_date) {
		j.conn();
		MemberVO vo = null;

		try {
			String sql = "update members set nickname=? where member_id=id?";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, newNickName);
			psmt.setString(2, id);

			int cnt = psmt.executeUpdate();
			if(cnt>0) {
				vo = new MemberVO(); 
				vo.setId(id);
				vo.setNick(newNickName);
				vo.setDate(join_date);
			}

		} catch (SQLException e) {
			System.out.println("�닔�젙�떎�뙣");
			e.printStackTrace();

		} finally {
			j.close();
		}
		return vo;

	}
	
	public int RegisterService(String id, String pw, String nick) {
		int cnt = 0;
		try {
			j.conn();
			String sql = "insert into members values(?,?,?,sysdate)";
			psmt = j.conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, nick);

			cnt = psmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			j.close();
		}
		System.out.println("dao임무완수");
		return cnt;
	}

}

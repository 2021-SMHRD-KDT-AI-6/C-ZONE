package kr.smhrd.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckIdDAO {

	  private Connection conn;
	  private PreparedStatement ps;
	  private ResultSet rs;
	  //연결메서드-->mysql용 접속 driver
	  public Connection getConnect() {
			String url ="jdbc:mysql://localhost:3306/carping_db";
			String user ="root";
			String password ="12345";
		  try {
			  Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	  }
	public int checkId(String id) {
		conn = getConnect();
		String sql = "select * from members where mb_id=?";
		int idCheck = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);

			rs = ps.executeQuery();

			if (rs.next() || id.equals("")) {
				idCheck = 0;
			} else {
				idCheck = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return idCheck;
	}
	public int checkNickname(String Nickname) {
		conn = getConnect();
		String sql = "select * from members where mb_nickname=?";
		int nicknameCheck = 0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, Nickname);

			rs = ps.executeQuery();

			if (rs.next() || Nickname.equals("")) {
				nicknameCheck = 0;
			} else {
				nicknameCheck = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nicknameCheck;
	}

}

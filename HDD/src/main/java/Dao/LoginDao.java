package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.example.hdd.ConnectDB;

public class LoginDao {
	Connection conn =null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	public AccountDao checkLogin(String user, String pass) {
		try {
			String query = "SELECT * FROM `admin` WHERE adm_mailAddress = ? and adm_password = ?";
			conn = new ConnectDB().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				AccountDao a = new AccountDao(rs.getString(1),rs.getString(2));
				return a;
			}
		} catch (Exception e) {
		e.getMessage();
		}
		return null;
	}
}

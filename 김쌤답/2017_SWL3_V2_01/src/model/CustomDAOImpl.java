package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class CustomDAOImpl extends DAOBase {
	private static CustomDAOImpl instance = new CustomDAOImpl();
	public static CustomDAOImpl getInstance() {
		return instance;
	}
	private CustomDAOImpl() { }	
	
	public ArrayList<CustomVO> readList() throws SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		ArrayList<CustomVO> customs = new ArrayList<CustomVO>();
		try {
			conn = getConnection();
			sql = "Select * from custom_01";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				do {
					CustomVO cst = new CustomVO();
					cst.setP_id(rs.getString(1));
					cst.setP_pw(rs.getString(2));
					cst.setC_name(rs.getString(3));
					cst.setC_email(rs.getString(4));
					cst.setC_tel(rs.getString(5));
					customs.add(cst);
				} while (rs.next());
			}
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			closeDBResources(rs, pstmt, conn);
		}
		return customs;
	}

}

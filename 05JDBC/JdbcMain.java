package edu;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcMain {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musthave";
		String sql = "select * from board";
		
		Class.forName(driver); // driver를 입력해줘서 MySQL과 연결 -> Connection, Statement, ResultSet 사용 가능
		Connection con = DriverManager.getConnection(url, "musthave", "tiger");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		while(rs.next()) {
			System.out.println(rs.getString("title"));
		}
		rs.close();
		st.close();
		con.close();
	}

}

package JDBC;

import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcMain {

	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/musthave";
		// DB의 주소, localhost를 ip로 바꿀수있음
		String sql = "select * from board";
		// query문, select data from table where 조건
		
		Class.forName(driver); // driver를 입력해줘서 MySQL과 연결 -> Connection, Statement, ResultSet 사용 가능
		Connection con = DriverManager.getConnection(url, "musthave", "tiger"); // 접속 아이디
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		// 날짜 출력 포맷 정의
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		// 숫자 출력 포맷 정의
		DecimalFormat df = new DecimalFormat("##,###");
		while(rs.next()) {
			System.out.println(String.format("%d|%s|%s|%s|%s|%s",
					rs.getInt("num"),
					rs.getString("title"),
					rs.getString("content"),
					rs.getString("id"),
					sf.format(rs.getDate("postdate")),
					df.format(rs.getInt("visitcount")))
			);
		}
		rs.close();
		st.close();
		con.close();
	}

}

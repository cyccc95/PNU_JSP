package JDBC;

import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcMain2 {
	public static List<countryDTO> getData(ResultSet rs) throws SQLException{
		List<countryDTO> list = new ArrayList<>();
		while(rs.next()) {
			list.add(new countryDTO(rs.getString("Code"), rs.getString("Name"), rs.getString("Continent"), rs.getInt("Population")));		
		}
		
		return list;
	}
	public static void printData(List<countryDTO> list) {
		System.out.println(list.toString());
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException{
		
		String driver = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/world";
		// DB의 주소, localhost를 ip로 바꿀수있음
		String sql = "select * from country where Name = 'South Korea'";
		// query문, select data from table where 조건
		
		Class.forName(driver); // driver를 입력해줘서 MySQL과 연결 -> Connection, Statement, ResultSet 사용 가능
		Connection con = DriverManager.getConnection(url, "musthave", "tiger"); // 접속 아이디
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		
		List<countryDTO> list = getData(rs);
		
		rs.close();
		st.close();
		con.close();
		
		printData(list);
	}

}

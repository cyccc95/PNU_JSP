package common;

import javax.servlet.ServletContext;

public class JDBConnectOracle extends JDBConnect {

    // 기본 생성자
    public JDBConnectOracle() {
        try {
            String driver = "oracle.jdbc.OracleDriver";
            String url = "jdbc:oracle:thin:@localhost:1521:xe";  
            String id = "musthave";
            String pwd = "1234"; 
 
        	if (getConnection(driver, url, id, pwd))	System.out.println("[JDBConnectOracle]DB 연결 성공(기본 생성자)");
	        else										System.out.println("[JDBConnectOracle]DB 연결 실패(기본 생성자)");
        }
        catch (Exception e) {            
            e.printStackTrace();
        }
    }

    // 두 번째 생성자
    public JDBConnectOracle(String driver, String url, String id, String pwd) {
    	super(driver, url, id, pwd);
    }

    // 세 번째 생성자
    public JDBConnectOracle(ServletContext application) {
    	super(application, "Oracle");
    }
}
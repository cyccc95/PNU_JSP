package common;

import javax.servlet.ServletContext;

public class JDBConnectMySQL extends JDBConnect {

    // 기본 생성자
    public JDBConnectMySQL() {
        try {
            String driver = "com.mysql.cj.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/musthave";  
            String id = "musthave";
            String pwd = "tiger"; 

        	if (getConnection(driver, url, id, pwd))	System.out.println("[JDBConnectMySQL]DB 연결 성공(기본 생성자)");
	        else										System.out.println("[JDBConnectMySQL]DB 연결 실패(기본 생성자)");
        }
        catch (Exception e) {            
            e.printStackTrace();
        }
    }

    // 두 번째 생성자
    public JDBConnectMySQL(String driver, String url, String id, String pwd) {
    	super(driver, url, id, pwd);
    }

    // 세 번째 생성자
    public JDBConnectMySQL(ServletContext application) {
    	super(application, "MySQL");
    }
}
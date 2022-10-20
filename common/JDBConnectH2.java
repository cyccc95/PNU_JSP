package common;

import javax.servlet.ServletContext;

public class JDBConnectH2 extends JDBConnect {

    // 기본 생성자
    public JDBConnectH2() {
        try {
            String driver = "org.h2.Driver";
            String url = "jdbc:h2:tcp://localhost/~/test";  
            String id = "sa";
            String pwd = ""; 

        	if (getConnection(driver, url, id, pwd))	System.out.println("[JDBConnectH2]DB 연결 성공(기본 생성자)");
	        else										System.out.println("[JDBConnectH2]DB 연결 실패(기본 생성자)");
        }
        catch (Exception e) {            
            e.printStackTrace();
        }
    }

    // 두 번째 생성자
    public JDBConnectH2(String driver, String url, String id, String pwd) {
    	super(driver, url, id, pwd);
    }

    // 세 번째 생성자
    public JDBConnectH2(ServletContext application) {
    	super(application, "H2");
    }
    
}
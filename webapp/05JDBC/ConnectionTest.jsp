<%@ page import="common.JDBConnectMySQL"%> 
<%@ page import="common.JDBConnectH2"%> 
<%@ page import="common.JDBConnectOracle"%> 
<%@ page import="common.JDBConnect"%> 
<%-- <%@ page import="common.DBConnPool"%>  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	JDBConnect jdbc = null;
%>
<%
	String dbtype = request.getParameter("db");
	if (dbtype == null || dbtype.equals(""))
		dbtype = "MySQL";
	
	out.print("연결된 데이터베이스는 " + dbtype + "입니다.");
	out.println("");
%>
<html>
<head><title>JDBC</title></head>
<body>
    <h2>JDBC 테스트 1</h2>
    <%
    System.out.println("=".repeat(80));
    System.out.println("JDBC 테스트 1");
    System.out.println("-".repeat(80));
    
    if (dbtype.equalsIgnoreCase("MySQL"))		jdbc = new JDBConnectMySQL();
    else if (dbtype.equalsIgnoreCase("H2"))		jdbc = new JDBConnectH2();
    else if (dbtype.equalsIgnoreCase("Oracle"))	jdbc = new JDBConnectOracle();
    
    System.out.println("[jdbc Test1]" + jdbc.toString());
    
    // Close Connection
    jdbc.close(); 
    %>
    
    <h2>JDBC 테스트 2</h2>
    <%
    System.out.println("=".repeat(80));
    System.out.println("JDBC 테스트 2");
    System.out.println("-".repeat(80));
   
    String driver = application.getInitParameter(dbtype + "Driver"); 
    String url = application.getInitParameter(dbtype + "URL");
    String id = application.getInitParameter(dbtype + "Id");
    String pwd = application.getInitParameter(dbtype + "Pwd");

    System.out.println("[application-driver]" + driver);
    System.out.println("[application-url   ]" + url);
    System.out.println("[application-id    ]" + id);
    System.out.println("[application-pwd   ]" + pwd);
    
    if (dbtype.equalsIgnoreCase("MySQL"))		jdbc = new JDBConnectMySQL(driver, url, id, pwd);
    else if (dbtype.equalsIgnoreCase("H2"))		jdbc = new JDBConnectH2(driver, url, id, pwd);
    else if (dbtype.equalsIgnoreCase("Oracle"))	jdbc = new JDBConnectOracle(driver, url, id, pwd);    
    System.out.println("[jdbc Test2]" + jdbc.toString());
    
    // Close Connection
	jdbc.close();
    %>
    
    <h2>JDBC 테스트 3</h2>
    <%
    System.out.println("=".repeat(80));
    System.out.println("JDBC 테스트 3");
    System.out.println("-".repeat(80));

    jdbc = new JDBConnect(application, dbtype);
    System.out.println("[jdbc Test3]" + jdbc.toString());
    
    // Close Connection
    jdbc.close();
    
    %>
</body>
</html>
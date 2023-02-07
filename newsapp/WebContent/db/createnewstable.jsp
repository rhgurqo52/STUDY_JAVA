<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String driverClass = "com.mysql.jdbc.Driver";

try{

Class.forName(driverClass);
out.print("jdbc로딩 성공!<br>");
} catch (ClassNotFoundException err){
	out.print("jdbc 드라이버 로딩 실패! <br>");
}

String url = "jdbc:mysql://localhost:3306/news?useUnicode=true&serverTimezone=Asia/Seoul";
String id = "root";
String pw = "1104jy";

Connection conn = null;         // 연결객체 
PreparedStatement pstmt = null; // 구문객체

try{
	conn = DriverManager.getConnection(url, id, pw);
	out.println("SQL 서버 연결 성공!<br>");
} catch (SQLException sqlerr){
	out.println("SQL 서버 연결 실패 <br>");
	out.println(sqlerr.getMessage() + "<br>");
}
// PreparedStatement 구문 설정
try{
String sql = "CREATE TABLE news("
		+ "nid int(20) NOT NULL AUTO_INCREMENT,"
		+ "nau varchar(10),"
		+ "nca varchar(10),"
		+ "nsj varchar(50),"
		+ "nct varchar(500),"
		+ "nlk varchar(100),"
		+ "npu varchar(2),"
		+ "nda varchar(10) timestamp NULL DEFAULT current_timestamp(),"									
		+ "primary key(nid))";

pstmt = conn.prepareStatement(sql);
pstmt.executeUpdate();

} catch (SQLException sqlerr){
	out.print("테이블 생성 실패!<br>");
	out.print(sqlerr.getMessage() + "<br>");
} finally{
	
	//연결 종료
	      if (pstmt != null)  pstmt.close();
		  if (conn != null) conn.close();
}


%>
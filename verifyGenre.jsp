<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	String gen = request.getParameter("genre");

	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
		
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);
	
	
	String sqlStr = "INSERT INTO genre(Genre) values(?) ";
	PreparedStatement pstmt = conn.prepareStatement(sqlStr);
	
	pstmt.setString(1,gen);
	
	pstmt.executeUpdate();
	
	response.sendRedirect("fullGenre.jsp");

%>
</body>
</html>
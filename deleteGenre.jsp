<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
String gID = request.getParameter("gID");

	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
		
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);
		
	String sql = "Delete from genre where gID = ?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setInt(1 , Integer.parseInt(gID));
	
	int rec = pstmt.executeUpdate();
	
	if(rec == 0){
		
	}else{
		out.println(rec + "record(s) updated!");
		response.sendRedirect("fullGenre.jsp");
	}



%>

</body>
</html>
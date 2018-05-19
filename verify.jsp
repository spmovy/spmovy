<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,DBConn.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%
try{
	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
	
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
	
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);




	String userid=request.getParameter("userID");
	String password=request.getParameter("password");
	ResultSet rs;
	String sql = "SELECT * FROM spmovvdb.userdata where userID=? and password=?";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,userid);
	pstmt.setString(2,password);
	
	rs = pstmt.executeQuery();
	while(rs.next()){
		if(userid.equals("admin") && password.equals("admin")){
			session.setAttribute("username", userid);
			response.sendRedirect("movieSettings.jsp");
		}else{
			response.sendRedirect("index.jsp");
		}
		
	}
	conn.close();
	} catch (Exception e){
	out.println(e);
	}
%>

</body>
</html>
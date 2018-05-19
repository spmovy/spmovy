<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<!--Author: Bryan Chan & Dylan Yeo
	DISM/2A/01
	p1748857 &  p172
   -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border = '1'>
<%  

	String id = request.getParameter("gID");
	String mt = "";
	String al= "";
	String rd= "";
	String sy= "";
	String dur= "";
	String mts= "";
	String pi= "";
	

	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
		
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);
	String sql = "select spm.* FROM  spmovvdb.genre spg, spmovvdb.movies spm , spmovvdb.movie_genre smg WHERE spg.gid = ? and smg.gid = ? AND spm.mid = smg.mid;";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);	
	
	pstmt.setInt(1, Integer.parseInt(id));
	pstmt.setInt(2, Integer.parseInt(id));
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
/* 		mt = rs.getString("MovieTitle");
		al = rs.getString("ActorList");
		rd = rs.getString("ReleaseDate");
		sy = rs.getString("Synopsis");
		dur = rs.getString("Duration");
		mts = rs.getString("MovieTimeSlot");
		pi = rs.getString("posterImg"); */
		
		int mID = rs.getInt("mID");
		String MovieTitle = rs.getString("MovieTitle");
		String ActorList = rs.getString("ActorList");
		String ReleaseDate = rs.getString("ReleaseDate");
		String Synopsis = rs.getString("Synopsis");
		String Duration = rs.getString("Duration");
		String MovieTimeSlot = rs.getString("MovieTimeSlot");
	
		out.println("<tr>");
		
		out.println("<td>" + MovieTitle + "</td>");
		out.println("<td>" + ActorList + "</td>");
		out.println("<td>" + ReleaseDate + "</td>");
		out.println("<td>" + Synopsis + "</td>");
		out.println("<td>" + Duration + "</td>");
		out.println("<td>" + MovieTimeSlot + "</td>");
		
		out.println("</tr>");
	}

%>

</table>
</body>
</html>
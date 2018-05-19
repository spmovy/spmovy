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
<% 
	
	
	/*  String mID = request.getParameter("mID");*/

	String MovieTitle = request.getParameter("MovieTitle");

	String ActorList = request.getParameter("ActorList");

	String ReleaseDate = request.getParameter("ReleaseDate");

	String Synopsis = request.getParameter("Synopsis");

	String Duration = request.getParameter("Duration");

	String MovieTimeSlot = request.getParameter("MovieTimeSlot");

	String posterImg = request.getParameter("posterImg");
	
	String director = request.getParameter("director");
	
	String movRating = request.getParameter("movRating");
	
	String [] genre = request.getParameterValues("genre");

	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
		
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);
	
	String sqlStr = "INSERT into movies (MovieTitle , ActorList, ReleaseDate , Synopsis , Duration , MovieTimeSlot , posterImg, movRating, directorName) values (? ,? ,? ,? ,? ,? ,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sqlStr);
	
	/*pstmt.setInt(1,Integer.parseInt(mID));*/
	pstmt.setString(1,MovieTitle);	
	pstmt.setString(2,ActorList);
	pstmt.setString(3,ReleaseDate);
	pstmt.setString(4,Synopsis);
	pstmt.setString(5,Duration);
	pstmt.setString(6,MovieTimeSlot);
	pstmt.setString(7,posterImg);
	pstmt.setString(8,movRating);
	pstmt.setString(9,director);
	int rec = pstmt.executeUpdate();
/* 	out.println(rec + " record(s) added"); */
	
	/* String sqlStr2= "Select mID from movies where MovieTitle = ?";
	pstmt = conn.prepareStatement(sqlStr2);
	pstmt.setString(1,MovieTitle);
	
	int id = 0;
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
		id = rs.getInt("mID");
	} */
	
	int g_id;
	int m_id;
	for(int i = 0; i < genre.length; i++){
		String g_str = genre[i];
		
		String sqlStr2 = "SELECT gID, mID from spmovvdb.genre g, spmovvdb.movies m WHERE g.Genre = ? AND m.MovieTitle = ?";
		
		pstmt = conn.prepareStatement(sqlStr2);
		pstmt.setString(1, g_str);
		pstmt.setString(2,MovieTitle);
		
/* 		out.println(g_str + MovieTitle); */
		
		ResultSet rs = pstmt.executeQuery();
		
		
		
		while(rs.next()){
			g_id = rs.getInt("gID");
			m_id = rs.getInt("mID");
			
			sqlStr2 = "INSERT INTO movie_genre(mID,gID) values(?,?)";
			pstmt = conn.prepareStatement(sqlStr2);
			pstmt.setInt(1, m_id);
			pstmt.setInt(2, g_id);
			
			int rec2 = pstmt.executeUpdate();
		}
	  }
	
		response.sendRedirect("movieSettings.jsp");	
%>
</body>
</html>
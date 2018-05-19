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
<title>Update Page</title>
</head>
<body>
<!-- <a href="movieSettings.jsp">Back to Settings</a> -->
<%

		String id = request.getParameter("mID");
		String MovieTitle = request.getParameter("MovieTitle");
		String ActorList = request.getParameter("ActorList");
		String ReleaseDate = request.getParameter("ReleaseDate");
		String Synopsis = request.getParameter("Synopsis");
		String Duration = request.getParameter("Duration");
		String MovieTimeSlot = request.getParameter("MovieTimeSlot");
		String posterImg = request.getParameter("posterImg");
		
		
		String mt = null;
		String al= null;
		String rd= null;
		String sy= null;
		String dur= null;
		String mts= null;
		String pi= null;
		
		int [] genre2 = null;
		int gnID;

	
 		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		
		//define connection URL
		String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		
		String sqlStr = "SELECT * FROM movies where mID = ?";
		
		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		
		pstmt.setInt(1,Integer.parseInt(id));
		/* pstmt.setInt(1,Integer.parseInt(id)); */
		
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()){
			
			mt = rs.getString("MovieTitle");
			al = rs.getString("ActorList");
			rd = rs.getString("ReleaseDate");
			sy = rs.getString("Synopsis");
			dur = rs.getString("Duration");
			mts = rs.getString("MovieTimeSlot");
			pi = rs.getString("posterImg");
			
		}
		
		
		/* String sqlStr2 = ("SELECT gID from spmovvdb.genre; ");
		PreparedStatement pstmt2 = conn.prepareStatement(sqlStr2);
		ResultSet rs2 = pstmt.executeQuery();
		
		while(rs2.next()){
			gnID = rs2.getInt("gID");
		}
 */		
%>
<form action="verifyUpdate.jsp">
	MovieTitle:    <input type = "text" name = "MovieTitle" Value="<%=mt%>">
	<br>
	ActorList:     <input type = "text" name = "ActorList" Value="<%=al%>">
	<br>	
	ReleaseDate:   <input type = "text" placeholder="YYYY-MM-DD" name = "ReleaseDate" Value="<%=rd%>">
	<br>
	Synopsis:      <input type = "text" name = "Synopsis" Value="<%=sy%>">
	<br>
	Duration:      <input type = "text" name = "Duration" Value="<%=dur %>"> 
	<br>
	MovieTimeSlot: <input type = "text" name = "MovieTimeSlot" Value="<%=mts %>">
	<br>
	posterImg:      <input type="text" name="posterImg" Value="<%=pi %>">
	<br>
	Genre:
	<br/>
	<%
	
	int gid;
	sqlStr = "select * from genre";
	pstmt = conn.prepareStatement(sqlStr);
	%>
	<%
	rs = pstmt.executeQuery();
	while (rs.next()){
		int genreid = rs.getInt("gID");
		String genres = rs.getString("Genre");
		out.print(genres);
		
		%>
		<input type="checkbox" name="genre" value="<%= genres%>"/>
		<br/>
		<%
	}
%>


	<input type ="hidden" name="mID" value=<%=id %>>
	<input type="submit" value="Update!">
</form>
<form action="movieSettings.jsp">
<input type="submit" value="Back" >
</form>
</body>
</html>
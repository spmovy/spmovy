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
<title>Add Movie</title>
</head>
<body>
<a href="movieSettings.jsp">Back to Settings</a>
<form action = "verifyEntry.jsp">

<!--  mID: <input type = "text" name = "mID">
<br>-->

MovieTitle: <input type = "text" name = "MovieTitle">
<br>


ActorList: <input type = "text" name = "ActorList">
<br>


ReleaseDate: <input type = "text" placeholder="YYYY-MM-DD" name = "ReleaseDate">
<br>


Synopsis: <input type = "text" name = "Synopsis">
<br>


Duration: <input type = "text" name = "Duration"> 
<br>


MovieTimeSlot: <input type = "text" name = "MovieTimeSlot">
<br>
posterImg: <input type="text" name="posterImg">
<br>
Director: <input type="text" name="director">
<br>
Rating: <input type="text" name="movRating">

<table border = '1'>
	<%
	//load JDBC Driver
	Class.forName("com.mysql.jdbc.Driver");
		
	//define connection URL
	String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
	//establish connection to URL
	Connection conn = DriverManager.getConnection(connURL);
	
	String sqlStr = "SELECT * FROM genre";
	PreparedStatement pstmt = conn.prepareStatement(sqlStr);
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
		String g = rs.getString("Genre");
		out.println("<tr>");
		out.println("<td>");
		out.println("<input type='checkbox' name='genre' value="+ g + ">" + g);
	}
	out.println("</tr>");
%>
</table>


<input type="submit" name="submitButton" value="Add!">
<input type ="reset" value="Reset"/>

</form>

</body>
</html>
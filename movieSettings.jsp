<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie Settings</title>
<style>
#movtable {
    font-family: "Tahoma", Geneva, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#movtable td, #movtable th {
    border: 1px solid #ddd;
    padding: 8px;
}

#movtable tr:nth-child(even){background-color: #f2f2f2;}

#movtable tr:hover {background-color: #ddd;}

#movtable th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #536878;
    color: white;
}
</style>
</head>
<body>
	<% 
		if ((!session.getAttribute("username").equals("admin")) || (session.getAttribute("userID") == "")) {
			response.sendRedirect("index.jsp");
			
		} else {
	%>

			<form action="logout.jsp">
				<input type="submit" value="Log Out" > 
			</form>
			
<%
		}
		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");
		
		//define connection URL
		String connURL ="jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00"; 
		
		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);
		
		String sqlStr = "Select * from movies";
		
		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		
		ResultSet rs = pstmt.executeQuery();
		
		out.println("<table id='movtable'>");
		out.println("<th > Movie Title</th>");
		out.println("<th >Actor List</th>");
		out.println("<th >Release date</th>");
		out.println("<th >Synopsis</th>");
		out.println("<th >Duration</th>");
		out.println("<th >Movie Time Slot(s)</th>");
		out.println("<th >Movie Rating</th>");
		out.println("<th >Actions</th>");
		while(rs.next()){
			
			int mID = rs.getInt("mID");
			String MovieTitle = rs.getString("MovieTitle");
			String ActorList = rs.getString("ActorList");
			String ReleaseDate = rs.getString("ReleaseDate");
			String Synopsis = rs.getString("Synopsis");
			String Duration = rs.getString("Duration");
			String MovieTimeSlot = rs.getString("MovieTimeSlot");
			String movRating = rs.getString("movRating");
	
			out.println("<tr>");
			
			out.println("<td>" + MovieTitle + "</td>");
			out.println("<td>" + ActorList + "</td>");
			out.println("<td>" + ReleaseDate + "</td>");
			out.println("<td>" + Synopsis + "</td>");
			out.println("<td>" + Duration + "</td>");
			out.println("<td>" + MovieTimeSlot + "</td>");
			out.println("<td>" + movRating + "</td>");			
			out.println("<td>");
%>
	<form action=delete.jsp>
		<input type="hidden" name="mID" value="<%= mID %>" /> <input
			type="submit" value="Delete!" />

	</form>
	
 	<form action="updateMovies.jsp">
		<input type="hidden" name="mID" value="<%= mID %>" /> <input
			type="submit" value="Update!" />
	</form>
	
	<%
		out.println("</td>");
		out.println("</tr>");

		}

		out.println("</table>");
	%>
	<form action="newMovie.jsp">
		<input type="submit" value="Click here to Add a Movie!" />
	</form>
	<form action="newGenre.jsp">
		<input type="submit" value="Click here to Add a Genre!" />
	</form>

<script>
</script>
</body>
</html>
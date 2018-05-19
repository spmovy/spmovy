<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View genres here</title>
</head>
<body>
<a href="movieSettings.jsp">Back to Settings</a>
	<%
		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");

		//define connection URL
		String connURL = "jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00";

		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);

		String sqlStr = "SELECT * from genre";
		PreparedStatement pstmt = conn.prepareStatement(sqlStr);

		ResultSet rs = pstmt.executeQuery();

		out.println("<table border = '1'>");
		while (rs.next()) {
			String genreN = rs.getString("genre");
			int gID = rs.getInt("gID");
			out.println("<tr>");
			out.println("<td>" + genreN + " </td>");
			out.println("<td>");
	%>
	<form action=deleteGenre.jsp>
		<input type="hidden" name="gID" value="<%=gID%>" /> <input
			type="submit" value="Delete!" />
	</form>

	<%
		out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<!--Author: Bryan Chan & Dylan Yeo
	DISM/2A/01
	p1748857 &  p172
   -->
<html>
<head>
<script>
	function err() {
    alert("ERror please try again by selecting the genre(s) too");
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>verifying update..</title>
</head>
<body>

	<%
		String id = request.getParameter("mID");
		String mt = request.getParameter("MovieTitle");
		String al = request.getParameter("ActorList");
		String rd = request.getParameter("ReleaseDate");
		String sy = request.getParameter("Synopsis");
		String dur = request.getParameter("Duration");
		String mts = request.getParameter("MovieTimeSlot");
		String pi = request.getParameter("posterImg");
		String[] genreID = request.getParameterValues("genre");

		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");

		//define connection URL
		String connURL = "jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00";

		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);

		String sqlStr = "UPDATE movies SET MovieTitle=? ,ActorList=? ,ReleaseDate=?, Synopsis=?, Duration=?, MovieTimeSlot=?, posterImg=? where mID = ?";

		PreparedStatement pstmt = conn.prepareStatement(sqlStr);

		pstmt.setString(1, mt);
		pstmt.setString(2, al);
		pstmt.setString(3, rd);
		pstmt.setString(4, sy);
		pstmt.setString(5, dur);
		pstmt.setString(6, mts);
		pstmt.setString(7, pi);
		pstmt.setInt(8, Integer.parseInt(id));

		int rec = pstmt.executeUpdate();

		if (genreID[0] == null) {
			%>
			<p onload="err();"> please try AGAIN</p>
			
			<%
			out.println("ERror please try again by selecting the genre(s) too");
			response.sendRedirect("movieSettings.jsp");
		} else {
			String sqlStr3 = "DELETE from movie_genre where mID = ?";
			PreparedStatement pstmt3 = conn.prepareStatement(sqlStr3);

			pstmt3.setInt(1, Integer.parseInt(id));
			int rec2 = pstmt3.executeUpdate();

			String gStr = null;
			for (int i = 0; i < genreID.length; i++) {
				gStr = genreID[i];
				String sqlStr2 = "select * from spmovvdb.genre where Genre = ? ";
				PreparedStatement pstmt2 = conn.prepareStatement(sqlStr2);
				pstmt2.setString(1, gStr);
				ResultSet rs2 = pstmt2.executeQuery();

				if (rs2.next()) {
					String sqlStr4 = "INSERT INTO movie_genre(mID,gID) values(?,?)";
					int g_id = rs2.getInt("gID");
					pstmt2 = conn.prepareStatement(sqlStr4);
					pstmt2.setInt(1, Integer.parseInt(id));
					pstmt2.setInt(2, g_id);

					pstmt2.executeUpdate();

				}
			}
		}
		response.sendRedirect("movieSettings.jsp");
	%>
</body>
</html>
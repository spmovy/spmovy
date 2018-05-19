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
	function formSubmit() {
		var x = document.getElementsByName('genre');
		x[0].submit();
	}
</script>
<style>
.styled-select.slate {
	background: url(/WebContent/images/demo/selectbtn.jpg) no-repeat right
		center;
	height: 34px;
	width: 240px;
}

.styled-select.slate select {
	border: 1px solid #ccc;
	font-size: 16px;
	height: 34px;
	width: 268px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form name="genre" action="processSearch.jsp">
		<%
			String g = null;
			int id = 0;
			//load JDBC Driver
			Class.forName("com.mysql.jdbc.Driver");

			//define connection URL
			String connURL = "jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00";

			//establish connection to URL
			Connection conn = DriverManager.getConnection(connURL);

			String sqlStr = "SELECT * FROM genre";
			PreparedStatement pstmt = conn.prepareStatement(sqlStr);

			ResultSet rs = pstmt.executeQuery();
		%>
		Search by Genre : <br />
		<div class="styled-select slate">
			<select id="search" name="gID" onchange="formSubmit();">
				<%
					while (rs.next()) {
						g = rs.getString("Genre");
						id = rs.getInt("gID");
						out.println("<option id=" + id + " value=" + id + ">" + g + "</option>");
					}
				%>
			</select>
		</div>
		<!-- <input type="submit" value="submit"/> -->
	</form>
</body>
</html>
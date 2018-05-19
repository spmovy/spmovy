<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding New Genre!</title>
</head>
<body>
<a href="movieSettings.jsp">Back to Settings</a>
<form action="verifyGenre.jsp">

Genre: <input type = "text" placeholder=" Enter a Genre here!" name = "genre">
	

<input type="submit" name="submitButton">
<input type ="reset" value="Reset"/>

</form>
</body>
</html>
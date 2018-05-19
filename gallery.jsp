
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function formSubmit() {
		var x = document.getElementsByName('genre');
		x[0].submit();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie Listing</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="layout/styles/sStyles.css" type="text/css">
</head>
<body id = "top">
	<%
		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");

		//define connection URL
		String connURL = "jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00";

		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);

		String sqlStr = "Select * from movies";

		PreparedStatement pstmt = conn.prepareStatement(sqlStr);

		ResultSet rs = pstmt.executeQuery();
	%>
	
	<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('../images/demo/backgrounds/01.png');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.jsp">SP Movy</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li><a href="index.jsp">Home</a></li>
          <li class="active"><a class="drop" href="index.jsp">Pages</a>
            <ul>
              <li class="active"><a href="gallery.jsp">Gallery</a></li>
<!--               <li><a href="full-width.html">Full Width</a></li>
              <li><a href="sidebar-left.html">Sidebar Left</a></li>
              <li><a href="sidebar-right.html">Sidebar Right</a></li>
              <li><a href="basic-grid.html">Basic Grid</a></li> -->
            </ul>
          </li>
<!--           <li><a class="drop" href="#">Dropdown</a>
            <ul>
              <li><a href="#">Level 2</a></li>
              <li><a class="drop" href="#">Level 2 + Drop</a>
                <ul>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                  <li><a href="#">Level 3</a></li>
                </ul>
              </li>
              <li><a href="#">Level 2</a></li>
            </ul>
          </li> -->
        </ul>
      </nav>
      <!-- ################################################################################################ --> 
    </header>
  </div>
  <!-- ################################################################################################ --> 
  <div id="breadcrumb" class="hoc clear" style="overflow: hidden; padding-top:10px;"> 
    <!-- ################################################################################################ -->
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Pages</a></li>
      <li><a href="#">Movies</a></li>
    </ul>
    <form name="genre" action="filterResult.jsp" style="float: right; color: black;" method="POST">
		<%
			String g = null;
			int id = 0;
			
			String sqlStr2 = "SELECT * FROM genre";
			PreparedStatement pstmt2 = conn.prepareStatement(sqlStr2);

			ResultSet rs2 = pstmt2.executeQuery();
		%>
		<p style="color: white; margin-bottom: 10px;">Filter by Genre:</p>
		<div class="styled-select slate">
			<select id="search" name="gID" onchange="formSubmit();">
				<%
					while (rs2.next()) {
						g = rs2.getString("Genre");
						id = rs2.getInt("gID");
						out.println("<option id=" + id + " value=" + id + ">" + g + "</option>");
					}
				%>
			</select>
		</div>
		<!-- <input type="submit" value="submit"/> -->
	</form>
    <!-- ################################################################################################ --> 
  </div>
  <!-- ################################################################################################ --> 
</div>
<!-- End Top Background Image Wrapper --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
	<main class="hoc container clear"> 
		<div id="gallery" style="margin-left: 2rem;">
        <figure>
		<ul class="nospace clear">
		<div class="row">
		<%
			while (rs.next()) {

				int mId = rs.getInt("mID");
				String MovieTitle = rs.getString("MovieTitle");
				String Duration = rs.getString("Duration");
				String MovieTimeSlot = rs.getString("MovieTimeSlot");
				String posterImg = rs.getString("posterImg");
		%>


		
			
			
  				<div class="col-sm-4">
  					<!-- <div class="span4"> -->
						<div class="card text-white bg-dark mb-3" style="width: 20rem; height: 42rem ;">
							<img class="card-img-top" src="<%=posterImg%>" alt="<%=MovieTitle%>" onError="this.src='images/demo/defaultPost.jpg'">
							<div class="card-body">
								<h5 class="card-title"><%=MovieTitle%></h5>
								<p class="card-text"><%=Duration%> minutes</p>
								<a href="movieDetails.jsp?mID=<%=mId%>" class="btn btn-primary">More</a>
							</div>
						</div>
					<!-- </div> -->
				</div>

			
		
	

<%
			}
		%>
	</div>
	</ul>
	</figure>
	</div>
	</main>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.backtotop.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script>

</body>
</html>
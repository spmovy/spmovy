<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css"
	media="all">
<link rel="stylesheet" href="layout/styles/sStyles.css" type="text/css">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Movie Details</title>
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
</style>
</head>
<body id="top" onload="as()">
	<%
		String mID = request.getParameter("mID");

		//load JDBC Driver
		Class.forName("com.mysql.jdbc.Driver");

		//define connection URL
		String connURL = "jdbc:mysql://localhost/spmovvdb?user=root&password=Arsenal00";

		//establish connection to URL
		Connection conn = DriverManager.getConnection(connURL);

		String sqlStr = "Select * from movies where mID = ?";

		PreparedStatement pstmt = conn.prepareStatement(sqlStr);
		pstmt.setInt(1,Integer.parseInt(mID));
		ResultSet rs = pstmt.executeQuery();	
		
	%>
	<!-- ################################################################################################ -->
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('../images/demo/backgrounds/01.png');">
		<!-- ################################################################################################ -->
		<div class="wrapper row1">
			<header id="header" class="hoc clear">
				<!-- ################################################################################################ -->
				<div id="logo" class="fl_left">
					<h1>
						<a href="index.jsp">SP Movy</a>
					</h1>
				</div>
				<nav id="mainav" class="fl_right">
					<ul class="clear">
						<li><a href="index.jsp">Home</a></li>
						<li class="active"><a class="drop" href="index.jsp">Pages</a>
							<ul>
								<li class="active"><a href="gallery.jsp">Gallery</a></li>

							</ul></li>
					</ul>
				</nav>
				<!-- ################################################################################################ -->
			</header>
		</div>
		<!-- ################################################################################################ -->
		<div id="breadcrumb" class="hoc clear"
			style="overflow: hidden; padding-top: 10px;">
			<!-- ################################################################################################ -->
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Pages</a></li>
				<li><a href="#">Movies</a></li>
			</ul>
			<p style="float: right;"><a href="gallery.jsp">&larr;Back to Gallery</a></p>
			<!-- ################################################################################################ -->
		</div>
		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
	<!-- ################################################################################################ -->
<main class="hoc container clear"> 
		<%
		if (rs.next()) {

			int mID2 = rs.getInt("mID");
			String MovieTitle = rs.getString("MovieTitle");
			String ActorList = rs.getString("ActorList");
			String ReleaseDate = rs.getString("ReleaseDate");
			String Synopsis = rs.getString("Synopsis");
			String Duration = rs.getString("Duration");
			String MovieTimeSlot = rs.getString("MovieTimeSlot");
			String posterImg = rs.getString("posterImg");
			String MovieRating = rs.getString("movRating");
			String Director = rs.getString("directorName");
		%> 
		<div class="row">
			<div class="col-12">
 				<p style="font-size: 30px; margin-bottom:3rem; color:#6AAEBF"><%=MovieTitle %></p>
 			</div>
		</div>
		<div class="row">
		<div class="col-12">
			<figure>
			<img id="myImg" style="width:20rem;"src="<%=posterImg%>" alt="<%=MovieTitle%>" onError="this.src='images/demo/defaultPost.jpg'">
			<div id="myModal" class="modal">
  				<span class="close">&times;</span>
  				<img class="modal-content" id="img01">
  				<div id="caption"></div>
			</div>
			</figure>
			<div class="row" style="overflow:auto;">
  				<div class="col-12">
  					<!-- <p style="font-size: 15px; margin-bottom:0px;">Actor List:</p> --> 
  					<p><strong>Cast:</strong><br/><%=ActorList %></p>
  				</div>
				<div class="col-8">
					<p><strong>Release Date:</strong> <%=ReleaseDate %></p>
					<p><strong>Director:</strong> <%=Director %></p>	
					<p><strong>Duration:</strong> <%=Duration %> mins</p>
				</div>
				<div class="col-4">
					<p><strong>Movie Time Slot(s):</strong> <%=MovieTimeSlot %></p>
					<p><strong>Release Date:</strong> <%=ReleaseDate %></p>
					<p><strong>Rated:</strong> <%=MovieRating %></p>		
				</div>
				<div class="col-12" style="margin-top:2rem">
					<p><strong>Synopsis:</strong> <%=Synopsis %></p>	
				</div>
			</div>
		</div>
		</div>
		<div class="row" style="padding-top: 40px">
		<h1 style="padding-left: 10px; text-decoration:underline; display: inline-block; color:#6AAEBF">Write your Review here!</h1>
		<div class="col-12">
			<form  action="verifyReview.jsp" id="reviewform" method="POST">
			<input id="rvname" type="text" name="usrname" placeholder="Name here">
			<input type ="hidden" name="mID" value=<%=mID %>>
			
			<br/>
			<textarea id="rvta" rows="10" cols="100" name="review" form="reviewform" placeholder="Enter your review here!"></textarea>
			<input type="submit" value="submit">
			</form>
		</div>
		<%
			String sqlStr2 = "SELECT * FROM spmovvdb.review where mID = ?";
			PreparedStatement pstmt2 = conn.prepareStatement(sqlStr2);
			pstmt2.setInt(1,Integer.parseInt(mID));
			ResultSet rs2 = pstmt2.executeQuery();
			
			while(rs2.next()){
			String mr = rs2.getString("movReview");
			String rm = rs2.getString("reviewerName");
		%>
		<div class="col-sm-4" style="margin-top:20px">
			<div class="card">
  				<div class="card-header">
    					Review
  				</div>
  				<div class="card-body">
    				<blockquote class="blockquote mb-0">
      					<p><%=mr %></p>
      					<footer class="blockquote-footer"><%=rm %></footer>
    				</blockquote>
  				</div>
  				</div>
		</div>
  		<% 
				}
  		%>
			
		</div>
		
		
		<%
			}
		%> 
</main>
	<script>
	function as(){
		var rvta = document.getElementById('rvta');
		var rvname = document.getElementById('rvname');
		rvta.style.backgroundColor='#faf0e6';
		rvname.style.backgroundColor='#faf0e6';
		rvta.style.color="black";
		rvname.style.color="black";
	}	
	</script>
	<script>
		// Get the modal
		var modal = document.getElementById('myModal');
	
		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function(){
	    modal.style.display = "block";
	    modalImg.src = this.src;
	    captionText.innerHTML = this.alt;
		}
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
	
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() { 
		    modal.style.display = "none";
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
		integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
		crossorigin="anonymous"></script>
	<script src="layout/scripts/jquery.min.js"></script>
	<script src="layout/scripts/jquery.backtotop.js"></script>
	<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
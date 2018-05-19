<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>SP Movy</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/styles/lgstyle.css" rel="stylesheet" type="text/css" />
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</head>
<body id="top">
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/bg2.png');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.jsp">SP Movy</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a class="drop" href="#">Pages</a>
            <ul>
              <li><a href="gallery.jsp">Gallery</a></li>
<!--               <li><a href="full-width.html">Full Width</a></li>
              <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
              <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
              <li><a href="pages/basic-grid.html">Basic Grid</a></li> -->
            </ul>
          </li>
          <!-- <li><a class="drop" href="#">Dropdown</a>
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
  <!-- ################################################################################################ --> 
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear">
    <article> 
      <!-- ################################################################################################ -->
      <h3 class="heading">Welcome to SP Movy!</h3>
      <p>Get ready for the Latest and Greatest movies available at our cinemas island-wide...	 </p>
      <p class="font-x1 uppercase bold">Scroll down to find out more..</p>
      <button onclick="document.getElementById('id01').style.display='block'">Login</button>
      <footer>
        <ul class="nospace inline pushright">
          <li>
 
         
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="verify.jsp" method="POST" style="color: black;">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    </div>

    <div class="container">
      <label for="uname"><b>Login</b></label>
      <input type="text" placeholder="Enter Username" name="userID" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="password" required>
        
      <button type="submit">Login</button>
    </div>

  </form>
</div>


			<!--END OF LOGIN BUTTON  -->
        </ul>
      </footer>
      <!-- ################################################################################################ --> 
    </article>
  </div>
  <!-- ################################################################################################ --> 
</div>
<!-- End Top Background Image Wrapper --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body --> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle" style=" margin-bottom:0px;">
      <h6 class="heading">Movie in the spotlight!</h6>
      <p>Click on the Poster to view more information about the movie </p>
    </div>
    <div class="nospace group center" style="width=100%;margin-top:15px;margin-left:5rem;margin-bottom: 3rem;">
<!--       <li class="one_quarter first">
        <article><a href="movieDetails.jsp?mID=1"><img src="images/demo/thorRag.jpg"></a>
          <h6 class="heading font-x1">Thor: Ragnarok</h6>
          <p>Imperdiet interdum ut convallis eu sed tortor nunc auctor nec turpis quis dapibus&hellip;</p>
        </article>
      </li> -->
      <!-- <li class="one_quarter"> -->
        <article><a href="movieDetails.jsp?mID=2" style="float: left;"><img class="movpost" src="images/demo/resizeDP.jpg"></a>
        <div id="cont" style="float: right; width: 60%;">
          <h6 class="heading font-x1" style="text-decoration: none;black;font-size: 30px;width: 20rem;display: inline-block;margin-bottom: 0px; border-bottom: 2px solid black;">Deadpool 2</h6>
          <p>If you have caught the first Deadpool, you would not want to miss Wade in action again with his trusty side-kick Dopinder as they save a kid who's in danger.<!-- &hellip; --></p>
         </div>
        </article>
      <!-- </li> -->
      <!-- <li class="one_quarter">
        <article><a href="movieDetails.jsp?mID=3"><img src="images/demo/jurassicworldFK.jpg"></i></a>
          <h6 class="heading font-x1">Jurassic World: Fallen Kingdom</h6>
          <p>Ullamcorper pulvinar lectus lacus porttitor eros non auctor orci felis in velit sed&hellip;</p>
        </article>
      </li>
      <li class="one_quarter">
        <article><a href="movieDetails.jsp?mID=4"><img src="images/demo/venom.jpg"></i></a>
          <h6 class="heading font-x1">Venom</h6>
          <p>Sodales nunc a congue metus cras id orci in tellus congue viverra ut purus sapien&hellip;</p>
        </article>
      </li> -->
    </div>
    <!-- ################################################################################################ --> 
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper bgded" style="background-image:url('images/demo/c2.jpg');">
  <div class="hoc split clear">
    <section> 
      <!-- ################################################################################################ -->
      <p class="nospace font-xs">iON Orchard Outlet</p>
      <h6 class="heading">Facilities</h6>
      <p class="btmspace-30">Over at SPMovy Cinemas, we have the top-of-the-line chairs that comes in many options such as Couple seats, XL seats & Reclining seats. We also have the best surround sound
      system available, Dolby 8.1. It's so good, you'll feel like you're right in the movie itself.</p>
      <ul class="fa-ul">
        <li><i class="fa-li fa fa-check-circle"></i> High Audio Fidelity, never miss a detail.</li>
        <li><i class="fa-li fa fa-check-circle"></i> Seating options for Everyone.</li>
        <li><i class="fa-li fa fa-check-circle"></i> 24 Locations around Singapore. </li>
      </ul>
      <!-- ################################################################################################ --> 
    </section>
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <div class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <ul id="testimonials" class="nospace group">
      <li class="one_third first">
        <figure><img class="circle" src="images/demo/yoda.png" alt="">
          <figcaption><strong>Yoda, Master</strong><br>
            <em>CEO & Founder, SP Movy</em></figcaption>
        </figure>
        <blockquote>Always had a dream of making everyone experience the best movie experience they will ever receive, I have. </blockquote>
      </li>
      <li class="one_third">
        <figure><img class="circle" src="images/demo/60x60.png" alt="">
          <figcaption><strong>Dylan Yeo</strong><br>
            <em>CTO & Co-Founder & Developer, SP Movy</em></figcaption>
        </figure>
        <blockquote>NIL</blockquote>
      </li>
      <li class="one_third">
        <figure><img class="circle" src="images/demo/60x60.png" alt="">
          <figcaption><strong>Bryan Chan</strong><br>
            <em>CFO & Co-Founder & Developer, SP Movy</em></figcaption>
        </figure>
        <blockquote>I've always shared the same dream as Yoda, furthermore, he is my uncle too. That makes providing the best experience easier.</blockquote>
      </li>
    </ul>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper coloured overlay bgded" style="background-image:url('images/demo/backgrounds/03.png');">
  <article class="hoc cta clear"> 
    <!-- ################################################################################################ -->
    <h6 class="three_quarter first">Sign up for our Membership Now! (Coming soon)</h6>
    <footer class="one_quarter"><a class="btn" href="#">Sign Up &raquo;</a></footer>
    <!-- ################################################################################################ --> 
  </article>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="sectiontitle">
      <h6 class="heading">Latest Events and Happenings with SP Movy</h6>
      <p>Check them out!</p>
    </div>
    <div class="group latest">
      <article class="one_third first">
        <figure><a href="#"><img src="images/demo/320x220.png" alt=""></a>
          <figcaption>
            <time datetime="2045-05-06T08:15+00:00"><strong>06</strong> <em>May</em></time>
          </figcaption>
        </figure>
        <div class="txtwrap">
          <h4 class="heading">Grand Opening @ Orchard</h4>
          <ul class="nospace meta">
            <li><i class="fa fa-user"></i> <a href="#">Bryan</a></li>
            <li><i class="fa fa-tag"></i> <a href="#">News,Opening</a></li>
          </ul>
          <p>We are proud to open our Latest and Greatest Flagship Cinema. Thank you to Prime Minister Lee Hsien Loong for joi&hellip;</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </div>
      </article>
      <article class="one_third">
        <figure><a href="#"><img src="images/demo/320x220.png" alt=""></a>
          <figcaption>
            <time datetime="2045-04-05T08:15+00:00"><strong>05</strong> <em>Apr</em></time>
          </figcaption>
        </figure>
        <div class="txtwrap">
          <h4 class="heading">Risus in commodo arcu</h4>
          <ul class="nospace meta">
            <li><i class="fa fa-user"></i> <a href="#">Admin</a></li>
            <li><i class="fa fa-tag"></i> <a href="#">Category Name</a></li>
          </ul>
          <p>Aliquam erat volutpat convallis nunc at risus tempor nec suscipit erat efficitur et elit lectus vestibulum ante&hellip;</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </div>
      </article>
      <article class="one_third">
        <figure><a href="#"><img src="images/demo/320x220.png" alt=""></a>
          <figcaption>
            <time datetime="2045-04-04T08:15+00:00"><strong>04</strong> <em>Apr</em></time>
          </figcaption>
        </figure>
        <div class="txtwrap">
          <h4 class="heading">Gravida eu sed elit</h4>
          <ul class="nospace meta">
            <li><i class="fa fa-user"></i> <a href="#">Admin</a></li>
            <li><i class="fa fa-tag"></i> <a href="#">Category Name</a></li>
          </ul>
          <p>Cubilia curae aliquam feugiat laoreet malesuada elementum habitant morbi tristique et netus et fames ac&hellip;</p>
          <footer><a href="#">Read More &raquo;</a></footer>
        </div>
      </article>
    </div>
    <!-- ################################################################################################ --> 
  </section>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper overlay bgded" style="background-image:url('images/demo/backgrounds/04.png');">
  <div id="ctdetails" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="nospace group">
      <li class="one_third first"><i class="fa fa-map-marker"></i>
        <p>Our Location (HQ)</p>
        <p><a href="https://goo.gl/maps/KxfJkPDw86q" target="_blank">Google Maps</a></p>
      </li>
      <li class="one_third"><i class="fa fa-phone"></i>
        <p>Call us</p>
        <p>+65 6599 8900</p>
      </li>
      <li class="one_third"><i class="fa fa-envelope-o"></i>
        <p>Email us</p>
        <p>spmoviesead@gmail.com</p>
      </li>
    </ul>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="one_quarter first">
      <h6 class="heading">SP Movy's Motto</h6>
      <p>To serve every customer with utmost service</p>
      <p>To introduce a whole new viewing experience to the whole world.</p>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Turpis egestas morbi</h6>
      <nav>
        <ul class="nospace">
          <li><a href="#"><i class="fa fa-lg fa-home"></i></a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Cookies</a></li>
          <li><a href="#">Disclaimer</a></li>
        </ul>
      </nav>
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
        <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
        <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
      </ul>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Elit malesuada ut</h6>
      <article>
        <h2 class="nospace font-x1"><a href="#">Ac quis interdum</a></h2>
        <time class="font-xs" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
        <p>In eget nisi vestibulum eu magna rutrum convallis ex pretium varius neque ac dolor maecenas quis lectus porttitor leo sed lectus.</p>
      </article>
    </div>
    <div class="one_quarter">
      <h6 class="heading">Id tortor gravida</h6>
      <ul class="nospace linklist">
        <li><a href="#">Condimentum nullam tempor</a></li>
        <li><a href="#">Vestibulum vulputate iaculis</a></li>
        <li><a href="#">Sapien volutpat nec suscipit</a></li>
        <li><a href="#">Velit massa sed metus mauris</a></li>
      </ul>
    </div>
    <!-- ################################################################################################ --> 
  </footer>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2016 - All Rights Reserved - <a href="#">SP Movy</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<!-- ################################################################################################ --> 
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a> 
<!-- JAVASCRIPTS --> 
<script src="layout/scripts/jquery.min.js"></script> 
<script src="layout/scripts/jquery.backtotop.js"></script> 
<script src="layout/scripts/jquery.mobilemenu.js"></script>

</body>
</html>
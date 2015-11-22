<html class="loading">
<head>

<link rel="icon" href="images/logo1.png" type="img/jpg/png" >  <title>Home</title>
<script type="text/javascript">
    document.getElementById('frmSearch').onsubmit = function() {
        window.location = 'http://www.google.com/search?q=site:shadiwadi.com ' + document.getElementById('txtSearch').value;
        return false;
    }
</script>
<script type="text/javascript" >
// IE10+
document.getElementsByTagName( "html" )[0].classList.remove( "loading" );

// All browsers
document.getElementsByTagName( "html" )[0].className.replace( "loading", "" );
</script>
<link rel="stylesheet" href="indexCSS.css">
</head>
<body>
      <div id="bar1" >
      <div id="leftSideBar1">
        <div id="logo">
          <img src="images/index/logo1.png" style="margin-left:20px;height:40px; width:40px;">
        </div>
        <h id="logoName"><a href=index2.jsp>ShadiWadi.com</a> </h>
      </div>
      <div id="rightSideBar1">

        <div id="SearchBar">
          <form action="./results.php" method="get">
          <input type="text" name="Search" size="30" maxlength="255" placeholder="Search Here...">
          <input type="submit" value="Search"/> 
          </form>

        </div>
        <div id="LogButtons">
          <!--<a href="#">test1</a>
          <a href="#">test2</a>-->
          <!--
          <button>Log In</button>
          <button>Sign Up</button>-->
          <a href="logout.jsp" class="LogButtonClass">Log Out</a>
          <!--<a href="" class="LogButtonClass">Sign Up</a>-->
        </div>
        <div id="profile">
<%          out.println("<a href=profilepage.jsp?value="+session.getAttribute("session1d").toString()+"&value1="+session.getAttribute("sessionId").toString()+" id=viewProfile>My Profile</a>");
%>                                <a href="" id="user" >
		  <%
			out.println("<strong>hello "+session.getAttribute("session1d").toString()+"</strong>");
			%></a>
        </div>
      </div>
    </div>

    <div id="bar2">
      <div id="leftSideBar2"></div>
      <div id="rightSideBar2">

        <div id="pageMenu">
          <a href="index2.jsp">Home</a>
            <a href="resultsPage2.jsp?value=halls">Halls</a>
            <a href="resultsPage2.jsp?value=Pandit">Pandit</a>
            <a href="resultsPage2.jsp?value=Jewellery">Jewellery</a>
            <a href="resultsPage2.jsp?value=Travel">Travel</a>
            <a href="resultsPage2.jsp?value=Photography">Photography</a>
            <a href="resultsPage2.jsp?value=food">Food</a>
            <a href="resultsPage2.jsp?value=Security">Security</a>

          <!--<button>bar2</button>
          <button>Sign Up</button>-->
        </div>
        </div>
      </div>
    </div>
 <!-- <ul id="menu">
    <li>
      <a href="#">1</a>
    </li>
    <li>
      <a href="#">2</a>
    </li>
    <li>
      <a href="">3</a></li>
  </ul>-->
  <section class="module parallax parallax-0">
  <div class="container">
    <h1>Hi,There!!</h1>
    <p>Welcome, to ShadiWad.com  Here you will find anything and everything that is needed for a Wedding, be it before or after.</p>
    <!--<p>Pre-Book your Halls With Us!!</p>-->
  </div>
</section>
<section class="module parallax parallax-1">
  <div class="container">
    <h1>HALLS</h1>
    <p>Pre-Book your Halls With Us!!</p>
    <!--<p>Pre-Book your Halls With Us!!</p>-->
  </div>
</section>
<section class="module parallax parallax-2">
  <div class="container">
    <h1>PANDIT</h1>
    <p>Book yourself a pandit of your choice</p>
  </div>
</section>
<section class="module parallax parallax-3">
  <div class="container">
    <h1>JEWELLERY</h1>
    <p>Choose from our Best designs, brands and designers</p>
  </div>
  
</section>
<!--
<section class="module content">
  <div class="container">
  </div>
</section>-->
<section class="module parallax parallax-4">
  <div class="container">
    <h1>travel</h1>
    <p>Book a Bus for Baarat, a Ghodhi or a Luxury Car for Dullah, or a Cab for Picking up Guests</p> 
  </div>
</section>
<section class="module parallax parallax-5">
  <div class="container">
    <h1>photography</h1>
    <p>Best of your Moments will be captured by best Photographers.</p> 
  </div>
</section>
<section class="module parallax parallax-6">
  <div class="container">
    <h1>Food</h1>
    <p>Top of the Class Caterers at your Service.</p> 
  </div>
</section>
<section class="module parallax parallax-7">
  <div class="container">
    <h1>Security</h1>
    <p>Feel Secure with our tested Security Services</p> 
  </div>
</section>
<!--
<section class="module content">
  <div class="container">
  </div>
</section>-->
<div id="footer">
  <a href="AboutUs.html">About Us</a>
  <a href="ContactUs.html">Contact Us</a>
</div>
</body>
</html>
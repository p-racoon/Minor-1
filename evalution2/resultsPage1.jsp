<html>
<head>

<link rel="icon" href="images/logo1.png" type="img/jpg/png" >	<title>Results</title>
	<link rel="stylesheet" href="resultsPageCSS.css">
</head>
<body>
	<div id="bar1" >
      <div id="leftSideBar1">
        <div id="logo">
          <img src="images/logo1.png" style="margin-left:20px;height:40px; width:40px;">
        </div>
        <a id="logoName" href="index.html">ShadiWadi.com </a>
      </div>
      <div id="rightSideBar1">

        <div id="SearchBar">
          <form action="./results.php" method="get">
          <input type="text" name="Search" size="30" maxlength="255" placeholder="Search Here...">
          <input type="submit" value="Search"/> 
          </form>

        </div>
        <div id="LogButtons" >
          <!--<a href="#">test1</a>
          <a href="#">test2</a>-->
          <!--
          <button>Log In</button>
          <button>Sign Up</button>-->
          <a href="login.html" class="LogButtonClass">Log In</a>
          <a href="signUpPage.html" class="LogButtonClass">Sign Up</a>
        </div>
        <div id="Profile">
          <!--<h id="user" >Username:</h>-->
        </div>
      </div>
    </div>

<!--
    <div id="bar2">
      <div id="leftSideBar2"></div>
      <div id="rightSideBar2">

        <div id="pageMenu">
          <a href="">Home</a>
          <a href="">Halls</a>
          <a href="">Pandit</a>
          <a href="">Jewellery</a>
          <a href="">Travel</a>
          <a href="">Photography</a>
          <a href="">Food</a>
          <a href="">Security</a>
        </div>
        </div>
      </div>
    </div>-->
    <div id="container">
    	<span>
        <div id="refinePanel">
          <div id="refineByCategory">
            <h1 style="padding-top:10px;padding-left:10px;"> Categories</h1>
            <a href="resultsPage1.jsp?value=halls">Halls</a><br>
            <a href="resultsPage1.jsp?value=Pandit">Pandit</a><br>
            <a href="resultsPage1.jsp?value=Jewellery">Jewellery</a><br>
            <a href="resultsPage1.jsp?value=Travel">Travel</a><br>
            <a href="resultsPage1.jsp?value=Photography">Photography</a><br>
            <a href="resultsPage1.jsp?value=food">Food</a><br>
            <a href="resultsPage1.jsp?value=Security">Security</a>
            <hr>
          </div>
          <div id="refineByPrice">
            <h1 style="padding-top:0px; padding-left:10px ">Price(Rs.)</h1>
            <a href="">0-1000</a><br>
            <a href="">1000-5000</a><br>
            <a href="">5000-10000</a><br>
            <a href="">5000-10000</a>
          </div>
          <hr>
          <div id="refineByLocation">
            <h1 style="padding-top:0px; padding-left:10px ">Location</h1>
            <!-- location dropdown box <input  >-->
          </div>
        </div>
      </span>

    <span>
    	<div id="dispResults">
		
<%@ page import="java.sql.*"%>
<%

Connection con=null;
Statement st=null;
ResultSet rs,sr=null;
int c=0;
String tablename=request.getParameter("value");


try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st=con.createStatement();
String sqlquery = "SELECT * FROM "+tablename+" ";

rs = st.executeQuery(sqlquery);
 
out.println("<h2 id=currentCategory>"+tablename+"</h2>");
out.println("<hr>");
while(rs.next())
{
 
out.println("<div class=box>");
out.println("<div class=pic></div>");
out.println("<p class=sellerName >Name:<a href=veiwdetail.jsp?s_id="+rs.getString(1)+">"+rs.getString(2)+"</a></p>");
          
out.println("<hr id=new_hr>");

out.println("<p>Location:</p>");
out.println("<p>Rating: 2/5</p>");
out.println("<input type=button value=Reach me>");
 out.println("</div>");

 
 
 
 }


st.close();
con.close();

}
catch(Exception e){
out.println("the exception message is" +e.getMessage());
}

%>



		
		
      <!--  <h2 id="currentCategory" style="font-family: Segoe UI,Arial,sans-serif ;">Category</h2>
        <hr>
        <div class="box">
          <div class="pic"></div>
          <p class="sellerName" style="text-weight:bold; font-size:25px;">Seller Name</p>
          <hr style="margin: 0.1px;">
        -->  <!--<p>Contact no.: </p>
          <p>Address: </p>-->
      <!--    <p>Location:</p>
          <p>Rating: 2/5</p>
          <input type="button" value="Book Now">
       --> 
    	</div>
    </div>
    </span>
    <div id="footer">
      <a href="AboutUs.html">About Us</a>
  <a href="ContactUs.html">Contact Us</a>
    </div>
</body>
</html>
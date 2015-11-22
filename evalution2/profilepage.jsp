<!DOCTYPE html>
<html>
<head>


<link rel="icon" href="images/logo1.png" type="img/jpg/png" >
	<title>HTML5 Login</title>
	<link rel="stylesheet" href="profilePage.css">
	<!--<link rel="stylesheet" href="normalize.css">
	<link rel="stylesheet" href="style.css">-->
</head>
<body>

<div id="ProfilePage">
    <div id="LeftCol">
        <div id="Photo">
        <img src="3.jpg" alt="profile pic" height="200" width="200">
        
        </div>
        <div id="ProfileOptions">
       
        </div>
    </div>
<%@ page import="java.sql.*"%>
<%

Connection con=null;
Statement st=null;
ResultSet rs=null;
String sellername=request.getParameter("value");
String tablename=request.getParameter("value1");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st=con.createStatement();
String sqlquery = "SELECT * FROM "+tablename+" where s_name='"+sellername+"' ";

rs = st.executeQuery(sqlquery);
 
out.println("<h2 id=currentCategory>hello "+sellername+"</h2>");
out.println("<hr>");
rs.next();

 String data="<div id=Info>"+
        "<p>"+
            "<strong>Name:</strong>"+
            "<span> "+rs.getString(2)+"</span>"+
        "</p>"+
        "<p>"+
            "<strong>contact details:</strong>"+
            "<span>"+rs.getString(3)+"</span>"+
        "</p>"+
         "<p>"+
            "<strong>email_id:</strong>"+
            "<span>"+rs.getString(8)+"</span>"+
        "</p>"+
			"<p>"+
            "<strong>Address:</strong>"+
            "<span>"+rs.getString(7)+"</span>"+
        "</p>"+
					"<p>"+
            "<strong>Type:</strong>"+
            "<span>"+rs.getString(6)+"</span>"+
        "</p>"+
        "<div id=edit>"+
					"<a href=ep.html><input type=submit value=Edit></a>"+
			"</div>"+
       
    "</div>";
 out.println(data);



st.close();
con.close();

}
catch(Exception e){
out.println("the exception message is" +e.getMessage());
}

%>

	
	
	
    <a href=index2.jsp>back </a> 
    <div style="clear:both"></div>
</div>
</body>
</html>
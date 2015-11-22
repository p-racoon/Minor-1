<html>
<head>
<meta charset="UTF-8"/>
<title>
updating
</title>
</head>
<body>

<%@ page import="java.sql.*"%>
<%

Connection con1=null;
Statement st1=null;
String t1=request.getParameter("uName");
String t2=request.getParameter("location");
String t3=request.getParameter("phNumberUser");
String t41=null;
String t4=request.getParameter("UserLocality");
String t5=request.getParameter("UserSociety");
String t6=request.getParameter("UserLandmark");
String t7=request.getParameter("UserHouseNo");
String t8=t4+" "+t5+" "+t6+" "+t7+".";
String t9=request.getParameter("ue1");
String t10=request.getParameter("up1");
String x="uclient";
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con1=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st1=con1.createStatement();
st1.execute("insert into uclient(s_name,location,u_phone,s_type,u_address,u_email_Id,u_password) values('"+t1+"','"+t2+"','"+t3+"','"+t41+"','"+t8+"','"+t9+"','"+t10+"')");
session.setAttribute("session1d",t1);
session.setAttribute("sessionId",x);
st1.close();
con1.close();
response.sendRedirect("index2.jsp");

}
catch(Exception e){
out.println("the exception message is" +e.getMessage());
}



%>
<!--
<a href =index.jsp>back to login page</a>
<!--

<form action = "index2.jsp" method = "post">
enter username:
<input type="text" name="t1">
<br><br>
enter password:
<input type="password" name="p1">
<input type="submit" value="log in">
</form>
<a href =index3.jsp>    forgot password</a>

-->

-->
</body>
</html>
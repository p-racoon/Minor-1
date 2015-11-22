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
String t1=request.getParameter("Name");
String t2=request.getParameter("location");
String t3=request.getParameter("phNumber1");
String t41=request.getParameter("ty1");
String t4=request.getParameter("Locality");
String t5=request.getParameter("Society");
String t6=request.getParameter("Landmark");
String t7=request.getParameter("officeNo");
String t8=t4+" "+t5+" "+t6+" "+t7+".";
String t9=request.getParameter("e1");
String t10=request.getParameter("p1");
String x="seller";

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con1=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st1=con1.createStatement();
st1.execute("insert into seller(s_name,location,s_phone,s_address,s_email_Id,s_password) values('"+t1+"','"+t2+"','"+t3+"','"+t8+"','"+t9+"','"+t10+"')");
session.setAttribute("session1d",t1);
session.setAttribute("session2d",t41);
session.setAttribute("sessionId",x);
st1.close();
con1.close();
response.sendRedirect("sid.jsp");

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
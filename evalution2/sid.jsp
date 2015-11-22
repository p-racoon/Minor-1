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
ResultSet rs=null;
String t1=session.getAttribute("session1d").toString();
int x1;

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con1=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st1=con1.createStatement();
String sqlquery = "SELECT s_id FROM seller where s_name='"+t1+"' ";

rs = st1.executeQuery(sqlquery);
rs.next();
x1=rs.getInt("s_id");
session.setAttribute("session3d",x1);
st1.close();
con1.close();
response.sendRedirect("formHome.jsp");

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
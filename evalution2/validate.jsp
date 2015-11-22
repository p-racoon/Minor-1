<html>
<head>
<meta charset="UTF-8"/>
<title>
lognined
</title>
</head>
<body>
<%@ page import ="java.sql.*"%>
<%
String email_Id=request.getParameter("usermail");
String password=request.getParameter("password");
String x=request.getParameter("ty1");
Connection con=null;
Statement st=null;
ResultSet rs=null;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:XE","hr","shiprayush");
st=con.createStatement();
String sqlquery = "SELECT * FROM "+x+" ";

rs = st.executeQuery(sqlquery);
 
int result=0;
while(rs.next())
{String dbname= rs.getString(8);
 String dbpass= rs.getString(9);
  if((email_Id.equals(dbname))&&(password.equals(dbpass))){
  result=1;
  
  session.setAttribute("session1d",rs.getString(2));
  break;
  
  }
  else{
  result=0;}
  
 }if(result==1){
  session.setAttribute("sessionId",x);
  response.sendRedirect("index2.jsp");}
  else{
  out.println("incorrect id or pass");
 out.println("<a href=login.html>enter correct credentials</a>");
  }
st.close();
con.close();

}
catch(Exception e){
out.println("the exception message is " +e.getMessage());
}



%>
</body>
</html>
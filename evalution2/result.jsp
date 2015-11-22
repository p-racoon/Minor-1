<html>
<head>
<meta charset="UTF-8"/>
<title>
updating
</title>
</head>
<body>
<%

String p=request.getParameter("p1");

try{
%> <%@page import="java.util.regex.*"%>
 <%@page import="java.util.regex.Pattern.matches.*"%>            
<%Pattern px=Pattern.compile("^[A-Z a-z 0-9]{4,16}$");            
	
boolean pm=px.matcher(p);
if(pm)
{out.println("true");
}
else{
out.println("false");}
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
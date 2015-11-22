<html>
<head>
<meta charset="UTF-8"/>
<title>
logout
</title>
</head>
<body>
<%
session.invalidate();
out.println("<script type=\"text/javascript\">"+
"alert(\"You are successfully logged out.\");"+
"window.location=\"index.html\";"+
"</script>\"");
%>
</body>
</html>
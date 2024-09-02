<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successfully login</title>
</head>
<body>
    <% String user = request.getParameter("t1");
       
       out.println("welcome dear user "+user);
       
    %>

</body>
</html>
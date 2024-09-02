<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@page import= "com.bca.demo.UserBean" %>
  <%@page import= "com.bca.demo.DButil" %>
  <%@page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% 
       RequestDispatcher rd=request.getRequestDispatcher("index.html");
       UserBean u=new UserBean();
       u.setName(request.getParameter("t1"));
       u.setPsw(request.getParameter("t2"));
       u.setAge(Integer.parseInt(request.getParameter("t3")));
       u.setPhone(Integer.parseInt(request.getParameter("t4")));
       
       int n=DButil.addData(u);
       if(n!=0)
       {
    	   out.println("Data inserted now you can login");
    	   rd.include(request,response);
       }
       
       else
       {
    	out.println("Data not inserted");   
       }
       
       %>

</body>
</html>
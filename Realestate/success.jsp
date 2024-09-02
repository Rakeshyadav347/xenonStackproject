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
    
      <nav>
          <ul>
              <li><a href="details.html">Estates Details</a></li>
              <li><a href="logout">Logout</a></li>
          </ul>
      </nav>
      <div class="property-listing-container">
          <h1>Available Properties</h1>
          <div id="propertyList"></div>
      </div>
      
  

</body>
</html>
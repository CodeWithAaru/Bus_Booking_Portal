<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="UserFront.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #00B0FF;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<br>

<h3>Contact Form</h3>

<div class="container">
  <form method="post" action="QueryInsertServlet">
    <label for="fname">Full Name</label>
    <input type="text" id="fname" name="fullname" placeholder="Your full name..">

    <label for="uname">Username</label>
    <input type="text" id="uname" name="uname" placeholder="Your user name.." value="<%=session.getAttribute("name")%>">
    
    <label for="number">Contact Number</label>
    <input type="text" id="number" name="number" placeholder="Your mobile number..">
   

    <label for="subject">Query</label>
    <textarea id="subject" name="query" placeholder="Write your query here.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>

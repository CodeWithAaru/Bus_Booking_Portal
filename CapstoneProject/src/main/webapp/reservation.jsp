<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="UserFront.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Table.css">
<meta charset="ISO-8859-1">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>


<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true" style="width: 30%; margin: auto; margin-top: 20px" >
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner" >
    <div class="carousel-item active">
      <img src="Bus_offer.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Bus_offer.png" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="Bus_offer.png" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<form action="Billing.jsp">
<br>
<div align="center" style="width: 60%;margin: auto;background-color: white;box-shadow: 1px 3px 5px;">
<%
session.setAttribute("name", session.getAttribute("name").toString());
%>
<h4>Booking Form</h4>
<table>
<tr><td>Enter Your UserName</td><td><input  type="text" name="uname" value="<%=session.getAttribute("name") %>" required></td>
<td>No Of Passenger</td><td><select  name='tickets'  ><option value="<%= request.getParameter("select") %>" selected hidden="hidden" ><%= request.getParameter("select") %></option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option></select></td></tr>
<tr><td>From</td><td><input  type="text" name="from" value="<%=request.getParameter("from") %>" required></td>
<td>To</td><td><input  type="text" name="to" required value="<%= request.getParameter("to") %>"></td></tr>
<tr><td>Hours Of Journey</td><td><input  type="text" name="h_journey" required value="<%= request.getParameter("ttime") %>"></td>
<td>Price(Per Ticket)</td><td><input  type="text" name="price" required value="<%= request.getParameter("price") %>"></td></tr>
<tr><td>Enter Your Name</td><td><input type="text" name="Full_name" required value=""></td>
<td>Enter Your Address</td><td><input type="text" name="Add" required value=""></td></tr>
<tr><td>Enter Your Age</td><td><input type="text" name="Age" required value=""></td>
<td>Coupan Code</td><td><input type="text" name="coupan_code" required value=""></td></tr>

<tr><td><input type="submit" value="Book" id="Button" ></td><td><input type="reset" value = "Reset" id="Button"></td></tr>
</table>
</div>
=
            
</form>

</body>
</html>
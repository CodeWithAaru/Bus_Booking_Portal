<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Table.css">
<title>Insert title here</title>
</head>
<body>
<%@ include file="AdminFront.jsp"%>
<br><br>
<form method="post" action="AddBusServlet">
<div align="center" style="background-color: white;;width: 30%;margin: auto;border: thin;box-shadow: 1px 3px 5px;border-radius: 5px">
<h1>Add Bus</h1>
<table>
<tr><td>Vehicle Id<td><input type="number" name="Vid" required></td></tr>
<tr><td>Vehicle Type</td><td><input type="text" name="Vtype" required></td></tr>
<tr><td>Departure Time</td><td><input type="time" name="Dtime" required></td></tr>
<tr><td>From</td><td><select name="From">
      <option value="Dehradun">Dehradun</option>
      <option value="Delhi">Delhi</option>
      <option value="Saharanpur" >Saharanpur</option>
      <option value="Kanpur">Kanpur</option>
    </select></td></tr>
<tr><td></td><td><select name="To" >
      <option value="Dehradun">Dehradun</option>
      <option value="Delhi">Delhi</option>
      <option value="Saharanpur" >Saharanpur</option>
      <option value="Kanpur">Kanpur</option>
    </select></td></tr>
<tr><td>Time Taken For Travel</td><td><input type="text" name="time" required></td></tr>
<tr><td>Price</td><td><input type="text" name="price" required></td></tr>
<tr><td><input type="submit" value="Register" id="Button"></td><td><input type="reset" value = "Reset"id="Button"></td></tr>
</table>
</div>
</form>


</body>
</html>
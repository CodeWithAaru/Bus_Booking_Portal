<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="UserFront.css">
<link rel="stylesheet" href="Table.css">

</head>
<body>
<div class="topnav">
<a href="BusEntry.jsp" class="active">Home</a>
<a href="BusEntry.jsp">Login</a>
</div>
<br><br>
<h1 align="center">Registration Form</h1>
<form method="post" action="RegisterServlet">
<div align="center" style="width: 30%;margin: auto;background-color: white;border:thin;box-shadow: 1px 2px 5px" >
<table>
<br>
<tr><td>Enter Your Name :</td><td><input type="text" name="name" required></td></tr>
<tr><td>Enter Your UserName :</td><td><input type="text" name="uname" required></td></tr>
<tr><td>Enter Your Age :</td><td><input type="number" name="age" required></td></tr>
<tr><td>Enter Your Number :</td><td><input type="number" name="number" required></td></tr>
<tr><td>Enter Your Email :</td><td><input type="text" name="email" required></td></tr>
<tr><td>Enter Your Address :</td><td><input type="text" name="address" required></td></tr>
<tr><td>Set Your PassWord :</td><td><input type="password" name="password" required></td></tr>
<tr><td><input type="submit" value="Register" id="Button" style="border-radius: 20px"></td><td><input type="reset" value = "Reset" id="Button"style="border-radius: 20px"></td></tr>
</table>
</div>
</form>

</body>
</html>
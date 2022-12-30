<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Table.css">
</head>
<body>
<div align="center">
<h1>Admin Login</h1>
<form method="post" action="AdminServlet">

<table>
<tr><td>Enter Your User Name</td><td><input type="text" name="uname"></td></tr>
<tr><td>Enter Your PassWord</td><td><input type="password" name="password"></td></tr>
<tr><td><input type="submit" value="login" id="Button"></td><td align="right"><a href="register.jsp" id="Button">Want to Register</a></td></tr>
</table>
</form>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="UserFront.jsp" %>
<%
String driver = "org.postgresql.Driver";
String connectionUrl = "jdbc:postgresql://localhost:5432/";
String database = "ticketdb";
String userid = "postgres";
String password = "password";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="Table.css">
</head>
<body>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from accountprofile where username='"+session.getAttribute("name")+"'";
session.setAttribute("name", session.getAttribute("name").toString());
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<form method="post" action="EditProfile.jsp" >
<%
session.setAttribute("name", session.getAttribute("name").toString()) ;
%>
<div align="center">
<h1>Your Profile</h1>
<table>
<tr><td>Your Name</td><td><input type="text" name="name" value="<%=resultSet.getString("name") %> " disabled="disabled" required></td></tr>
<tr><td>Your Age</td><td><input type="text" name="age" value="<%=resultSet.getString("age") %> " disabled="disabled" required></td></tr>
<tr><td>Your Mobile Number</td><td><input type="text" name="phone" value="<%=resultSet.getString("phone") %>" disabled="disabled" required></td></tr>
<tr><td>Your Email Id</td><td><input type="text" name="email" required value="<%= resultSet.getString("email") %>" disabled="disabled" ></td></tr>
<tr><td>Your Address</td><td><input type="text" name="address" required value="<%= resultSet.getString("address") %>" disabled="disabled"></td></tr>
<tr><td>Your password</td><td><input type="password" name="password" required value="<%= resultSet.getString("password") %>" disabled="disabled"></td></tr>

<tr><td colspan="10" align="center"><br><input type="submit" value="Edit Profile" id="Button"></td></tr>
</table>
</div>
            
</form>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
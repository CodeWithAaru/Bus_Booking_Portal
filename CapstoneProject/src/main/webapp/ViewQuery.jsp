<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="AdminFront.jsp" %>
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

<h1 align="center">Customers Query</h1>
<table id="customers">
<tr>
<th>Full Name</th>
<th>Username</th>
<th>Number</th>
<th>Query</th>
</tr>
<%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from query";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("number") %></td>
<td><%=resultSet.getString("query") %></td>
</tr>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>
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

<h1 align="center">All Booking</h1>
<table id="customers">
<tr>
<th>Ticket Id</th>
<th>Ticket Status</th>
<th>From</th>
<th>To</th>
<th>Journey Hours</th>
<th>Price</th>
<th>Passenger Name</th>
<th>Username</th>
<th>Passenger Address</th>
<th>Passenger Age</th>

</tr>
<%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ticket";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("vehicle_id") %></td>
<td><%=resultSet.getString("ticket_status") %></td>
<td><%=resultSet.getString("from_station") %></td>
<td><%=resultSet.getString("to_station") %></td>
<td><%=resultSet.getString("hours_of_journey") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("passenger_name") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("passenger_adress") %></td>
<td><%=resultSet.getString("passenger_age") %></td>
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
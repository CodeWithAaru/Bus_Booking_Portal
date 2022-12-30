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

<h1 align="center">All Running Bus</h1>
<table id="customers">
<tr>
<th>Vehicle Id</th>
<th>vehicle Type</th>
<th>departure Time</th>
<th>From</th>
<th>To</th>
<th>Time Taken</th>
<th>Price</th>
<th>Action</th>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from HypotheticlVehicle";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Vehicle_id") %></td>
<td><%=resultSet.getString("Vehicle_Type") %></td>
<td><%=resultSet.getString("Usual_Departure_Time") %></td>
<td><%=resultSet.getString("from_station") %></td>
<td><%=resultSet.getString("to_station") %></td>
<td><%=resultSet.getString("Time_Taken_For_Travel") %></td>
<td><%=resultSet.getString("price") %></td>
<td><a href="DeleteBus.jsp?id=<%=resultSet.getString("Vehicle_id") %>"><button type="button"  class="delete" id="Button">Delete</button></a></td>
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
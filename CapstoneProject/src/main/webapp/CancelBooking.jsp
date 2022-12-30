<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String id=request.getParameter("id");
try
{
Class.forName("org.postgresql.Driver");
Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM ticket WHERE Vehicle_id="+id);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<%@ include file="ViewBooking.jsp"%>
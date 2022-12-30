<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ include file="UserFront.jsp" %>




<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="Table.css">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ticket</title>
    </head>
<body background="http://www.teamarking.com/barcode/bar_background.jpg"> 

    <form method="post" action="reservation.jsp">

      
    <br>
    <br>
    <div align="center" >    
        <table id="customers">
            <tr><th>Vehicle Id</th>
           <th>Vehicle Type</th>
           <th>Departure Time</th>
           <th>From (City)</th>
           <th>To (City)</th>
           <th>Time Taken</th>
           <th>Price</th>
            <th>Action</th></tr>





                <%
                    Class.forName("org.postgresql.Driver").newInstance();
                    Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/ticketdb", "postgres", "password");

                    Statement st = con.createStatement();
                    ResultSet rs;

                    PreparedStatement ps = con.prepareStatement("select * from HypotheticlVehicle where from_station=? and to_station=?");
                    ps.setString(1, request.getParameter("From"));
                    ps.setString(2, request.getParameter("To"));

                    rs = ps.executeQuery();
                   
                    while (rs.next()) {

                        out.println("<tr>");
                        out.println("<form action='reservation.jsp'>"+"<input type='hidden' name='type' value='" + rs.getString("vehicle_id") + "'></td>");
                        out.println("<td>" + rs.getString("vehicle_id")+"<input type='hidden' name='type' value='" + rs.getString("vehicle_id") + "'></td>");
                        out.println("<td>" + rs.getString("vehicle_type") +"<input type='hidden' name='type' value='" + rs.getString("vehicle_type") + "'></td>");
                        out.println("<td>" + rs.getString("usual_departure_time") +"<input type='hidden' name='type' value='" + rs.getString("usual_departure_time") + "'></td>");
                        out.println("<td>" + rs.getString("from_station") +"<input type='hidden' name='from' value='" + rs.getString("from_station") + "'></td>");
                        out.println("<td>" + rs.getString("to_station") +"<input type='hidden' name='to' value='" + rs.getString("to_station") + "'></td>");
                        out.println("<td>" + rs.getString("time_taken_for_travel") +"<input type='hidden' name='ttime' value='" + rs.getString("time_taken_for_travel") + "'></td>");
                        out.println("<td>" + rs.getString("price") +"<input type='hidden' name='price' value='" + rs.getString("price") + "'></td>");
                        


                        out.println("<td><b><form action='reservation.jsp'><select name='select' id ='ticket'><option value='none' hidden disabled='disabled' selected='selected'>Traveller</option><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option></select><input type='submit' value='Book' id='Button'></form></b>");

                        out.println("</tr>");
                        

                    }
                    
                    
                    
                    st.close();

                %>


                
        </table>
       
       

        
         </div>
        
</form>
</body> 
</html>
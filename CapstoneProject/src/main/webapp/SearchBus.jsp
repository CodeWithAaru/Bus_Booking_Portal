<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="UserFront.jsp" %>
<!DOCTYPE html>
<html>
<body> 

<h2 style="color:olive;" align="center">Bus Search Engine</h2>

 <head>
 <link rel="stylesheet" href="Table.css">
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Search Bus</title>

 </head>
 
 <div align="center">
 <% 
 session.setAttribute("name", session.getAttribute("name").toString());
 %>
 

<form method = "get" action = "SearchBusUser.jsp">
<table id="t1">
    <tr>
<td><h3>From</h3></td>
<td>
   <select name="From" id="From_Station">
      <option value="none" disabled="disabled" selected="selected" hidden>From</option>
      <option value="Dehradun">Dehradun</option>
      <option value="Delhi">Delhi</option>
      <option value="Saharanpur" >Saharanpur</option>
      <option value="Kanpur">Kanpur</option>
    </select>
</td>
<td id="td1"><h3>To</h3></td>
<td>
   <select name="To" id="To_Station">
   <option value="none" disabled="disabled" selected="selected" hidden>To</option>
      <option value="Dehradun">Dehradun</option>
      <option value="Delhi">Delhi</option>
      <option value="Saharanpur" >Saharanpur</option>
      <option value="Kanpur">Kanpur</option>
    </select>
</td>
<td>
<tr><td colspan="10" align="center"><input type="submit" value="SEARCH" id="Button"> <input type="reset" value="RESET" id="Button"></td></tr>
    <%
        String x = (String) application.getAttribute("");
    //out.println(x);
    %>

</table>
</form>


</div>
</body>
</html>
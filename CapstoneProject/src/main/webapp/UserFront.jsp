
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="UserFront.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="topnav">
<%
 String n = session.getAttribute("name").toString();
 session.setAttribute("name",n );
%>
<a id="aryan" class="active" href="MyProfile.jsp" >My Profile(<%=session.getAttribute("name") %>)</a> 
<a href="SearchBus.jsp">Search Bus</a>  
<a href="ViewBooking.jsp">Your Booking</a>
<a href="QueryForm.jsp">Any Query?</a>
<a href="BusEntry.jsp" class ="active1">Log Out</a>
</div>



</body>
</html>
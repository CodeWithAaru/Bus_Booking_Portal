<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="UserFront.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="BillingCss.css">

</head>
<body>

<div class="container">

    <form method="post" action="TicketBookingServlet">
    <%
    session.setAttribute("name", session.getAttribute("name").toString());
    int a = Integer.parseInt(request.getParameter("tickets"));
    int b =Integer.parseInt(request.getParameter("price"));
    String coupan = request.getParameter("coupan_code");
    if(coupan.equalsIgnoreCase("safety"))
    {
    	b=b-120;
    	
    }
    
    
    
    
    %>
    <input  type="text" name="name" value="<%=request.getParameter("uname") %>" >
    <input type="text" name="from" value="<%=request.getParameter("from") %>" hidden="hidden" >
    <input type="text" name="tickets" value="<%=request.getParameter("tickets") %>" hidden="hidden" >
    <input type="text" name="to" value="<%=request.getParameter("to") %>" hidden="hidden" >
    <input type="text" name="price" value="<%=request.getParameter("price") %>" hidden="hidden" >
    <input type="text" name="h_journey" value="<%=request.getParameter("h_journey") %>" hidden="hidden">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>Full Name :</span>
                    <input name="full_name" type="text" placeholder="john deo" value="<%=request.getParameter("Full_name")%>" >
                </div>
                <div class="inputBox">
                    <span>Age :</span>
                    <input name="age" type="text" placeholder="example@example.com" value="<%=request.getParameter("Age")%>" >
                </div>
                <div class="inputBox">
                    <span>Address :</span>
                    <input type="text" name="Add" placeholder="room - street - locality" value="<%=request.getParameter("Add")%>" >
                </div>
                <div class="inputBox">
                    <span>Amount After Discount :</span>
                    <input type="number" name="Amount" value="<%=b*a%>" required="required">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                        <input type="text" placeholder="state" required="required">
                    </div>
                    <div class="inputBox">
                        <span>zip code :</span>
                        <input type="text" placeholder="Pincode">
                    </div>
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <span>cards accepted :</span>
                    <img src="card_img.png" alt="">
                </div>
                <div class="inputBox">
                    <span>Coupan Applied :</span>
                    <input type="text" name="coupan_code" value="<%=request.getParameter("coupan_code") %>" >
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444">
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" placeholder="Expiry Month">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="Expiry Year">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="Cvv">
                    </div>
                </div>

            </div>
    
        </div>

        <input type="submit" value="proceed to checkout" class="submit-btn">

    </form>

</div>    
    
</body>
</html>
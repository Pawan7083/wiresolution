<%-- 
    Document   : paymentgateway
    Created on : Mar 2, 2024, 9:45:05 AM
    Author     : Pawan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Components/common_css_js.jsp" %>
        
    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <h1>Hello World!</h1>
        
        <form action="PaymentGateway" method="post">
            <label>Enter amount</label>
            <input type="number" name="pay" id="pay_amount">
            <button onclick="paymentStart()">Pay</button>
            <button type="submit">submit</button>
        </form >
        
        <%@include file="Components/footer.jsp" %>
        <script src="Components/paymentscript.js"></script>
    </body>
</html>

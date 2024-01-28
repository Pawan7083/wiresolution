<%-- 
    Document   : login
    Created on : Jan 20, 2024, 12:06:04 PM
    Author     : Pawan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body style="background-color: #f0f1f2;">
        <%@include file="Components/navbar.jsp" %>
        
        <div class="container mt-3">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <%@include file="Components/message.jsp" %>
                            <h4 class="text-center ">Login Page</h4>
                            <form action="Login" method="post">
                                
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="">
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputPassword1">Password</label>
                                  <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required>
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Submit</button>
                                </div>
                                
                                <div class="text-center mt-2">
                                    <span>new user </span>
                                    <a href="registration.jsp">Register</a>
                                </div>
                                
                                
                             </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
    </body>
</html>

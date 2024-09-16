<%-- 
    Document   : contact
    Created on : Mar 20, 2024, 1:19:37 AM
    Author     : Pawan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="Components/navbar.jsp" %>

        <div class="container mt-3">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <%@include file="Components/message.jsp" %>
                            <h4 class="text-center ">Contact Form</h4>
                            <form action="MessageOperation" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" name="user" class="form-control" id="exampleInputText" aria-describedby="emailHelp" placeholder="Enter name" required>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email Id</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mobile No. : </label>
                                    <input type="number" name="mobile" class="form-control" id="exampleInputPassword1" placeholder="Enter mobile number" required>
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputText1">Message</label>
                                    <textarea type="text" name="message" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter your message" required=""></textarea>

                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary ">Submit</button>
                                </div>
                                

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%@include file="Components/footer.jsp" %>
    </body>
</html>
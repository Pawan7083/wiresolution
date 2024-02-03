<%-- 
    Document   : admin
    Created on : Jan 28, 2024, 9:58:19 PM
    Author     : Pawan Kumar
--%>
<%@page import="com.learn.wiresolution.entities.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User user= (User)session.getAttribute("user");
    
    if(user==null){
        response.sendRedirect("index.jsp");
        return ;
    }
    else if(user.getUserType().equalsIgnoreCase("normal")){
        response.sendRedirect("index.jsp");
        return ;
    }
    %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title> Admin</title>
        <%@include file="Components/common_css_js.jsp" %>
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <link href="Components/admin_style.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@include file="Admin_Modal/admin_sidebar.jsp" %>
        
        <section class="home-section">
            <%@include file="Admin_Modal/admin_navbar.jsp" %>
            <div class="home-content">
                <div class="card-body text-center col-md-6"><%@include file="Components/message.jsp" %></div>
                
            <div class="container">
                
                <div class="row">
                    <div class="col-md-3 pe-autp">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4>All User</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4>All Product</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4>All Categories</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4>Order List</h4>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            <div class="container mt-4">
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4><i class='bx bxs-user-detail' ></i>Add User</h4>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-md-3" data-toggle="modal" data-target="#add_product">
                        
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4 >Add Product</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3" data-toggle="modal" data-target="#add_category">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4>Add Categories</h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card card-ho">
                            <div class="card-body text-center">
                                <h4><box-icon name='list-ul' animation='burst' ></box-icon>Order List</h4>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
            </div>
        </section>
        
        

        <script>
            let sidebar = document.querySelector(".sidebar");
            let sidebarBtn = document.querySelector(".sidebarBtn");
            sidebarBtn.onclick = function () {
                sidebar.classList.toggle("active");
                if (sidebar.classList.contains("active")) {
                    sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                } else
                    sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
            }
        </script>
        <%@include file="Admin_Modal/addCategory.jsp" %>
        <%@include file="Admin_Modal/addProduct.jsp" %>
        <%@include file="Admin_Modal/useredit.jsp" %>
    </body>
</html>
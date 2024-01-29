<%-- 
    Document   : admin
    Created on : Jan 28, 2024, 9:58:19 PM
    Author     : Pawan Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <div class="sidebar">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus'></i>
                <span class="logo_name">Wired Solution</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="#" class="active">
                        <i class='bx bx-grid-alt' ></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-box' ></i>
                        <span class="links_name">Product</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-list-ul' ></i>
                        <span class="links_name">Order list</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-pie-chart-alt-2' ></i>
                        <span class="links_name">Analytics</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-coin-stack' ></i>
                        <span class="links_name">Stock</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-book-alt' ></i>
                        <span class="links_name">Total order</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-user' ></i>
                        <span class="links_name">Team</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-message' ></i>
                        <span class="links_name">Messages</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-heart' ></i>
                        <span class="links_name">Favrorites</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog' ></i>
                        <span class="links_name">Setting</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="#">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search' ></i>
                </div>
                <div class="profile-details">
                    <img src="images/profile.jpg" alt="">
                    <span class="admin_name">Prem Shahi</span>
                    <i class='bx bx-chevron-down' ></i>
                </div>
            </nav>
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
                                <h4>Add User</h4>
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
                                <h4>Order List</h4>
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
        <%@include file="Model/addCategory.jsp" %>
        <%@include file="Model/addProduct.jsp" %>
        <%@include file="Model/useredit.jsp" %>
    </body>
</html>
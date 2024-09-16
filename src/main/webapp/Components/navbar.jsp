<%-- 
    Document   : navbar
    Created on : Jan 20, 2024, 8:35:15?AM
    Author     : Pawan Kumar
--%>
<%@page import="com.learn.wiresolution.entities.User" %> 
<%@page import="com.learn.wiresolution.dao.CategoryDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.Category" %>
<%@page import="java.util.List" %>
<%
    CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
    List<Category> category= categoryDao.getCategory();
%>

<div class="container-fluid " style="height: 10px; background-color:#303f9f"></div>
<div class="container-fluid p-2 bg-light">
    <div class="row">
        <div class="col-md-4">
            <h3 style="color: #303f9f;">Wired Solution</h3>
        </div>
        <div class="col-md-4 " >
            <form class="form-inline my-2 my-lg-0" action="search_box.jsp" method="post">
                <input class="form-control mr-sm-2" name="ch" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <%
    User user = (User)session.getAttribute("user");
    
    if(user==null){
        %>
        <div class="col-md-4 text-right">
            <a href="login.jsp" class="btn btn-success">Login</a>
            <a href="registration.jsp" class="btn btn-primary">Register</a>
        </div>
        <%
            }
    else{
        
        %>
        <div class="col-md-4 text-right">

            <a href="" class="btn btn-success" data-toggle="modal" data-target="#viewuser"><%= user.getName() %></a>
            <a href="Logout" class="btn btn-primary">Logout</a>
            <a href="wishlist.jsp" class="btn btn-primary">wishlist</a>
            <a href="cart.jsp?user_id=<%= user.getId() %>" class="btn btn-success">cart</a>

        </div>
        <% } %>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Category
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <% 
                        for(Category c:category){
                    %>
                    <a class="dropdown-item" href="category.jsp?c_id=<%= c.getcId() %>"><%= c.getcName() %></a>
                    <div class="dropdown-divider"></div>
                    <%
                    }
                    %>

                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="view_all_product.jsp"><i class="fa-brands fa-product-hunt"></i> Products</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#"><i class="fa-solid fa-store"></i></i> Store network</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="service.jsp"><i class="fa-brands fa-servicestack"></i></i> Services</a>
            </li>


        </ul>
        <!--        <form class="form-inline my-2 my-lg-0">
                    <button class="btn btn-light my-2 my-sm-0 mr-1" type="submit"><i class="fa-solid fa-gear"></i> Setting</button>
                    <button class="my-0 my-sm-0" ><a  href="contact.jsp" class="btn btn-light my-0 my-sm-0" ><i class="fa-solid fa-phone-volume"></i> Contact Us</a></button>
                </form>-->
        <div class="col-md-3 text-right">
            <a href="" class="btn btn-light my-2 my-sm-0 mr-1"><i class="fa-solid fa-gear"></i> Setting</a>
            <a href="contact.jsp" class="btn btn-light my-2 my-sm-0 mr-0"><i class="fa-solid fa-phone-volume"></i> Contact Us</a>
        </div>
    </div>
</nav>
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
<%@include file="view_user.jsp" %>

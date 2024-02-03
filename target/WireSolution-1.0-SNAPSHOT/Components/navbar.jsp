<%-- 
    Document   : navbar
    Created on : Jan 20, 2024, 8:35:15?AM
    Author     : Pawan Kumar
--%>
<%@page import="com.learn.wiresolution.entities.User" %> 

<div class="container-fluid " style="height: 10px; background-color:#303f9f"></div>
<div class="container-fluid p-2 bg-light">
    <div class="row">
        <div class="col-md-4">
            <h3 style="color: #303f9f;">Wired Solution</h3>
        </div>
        <div class="col-md-5 " >
            <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
        <%
    User user = (User)session.getAttribute("user");
    
    if(user==null){
    %>
        <div class="col-md-3 text-right">
            <a href="login.jsp" class="btn btn-success">Login</a>
            <a href="registration.jsp" class="btn btn-primary">Register</a>
        </div>
    <%
        }
else{
        
        %>
        <div class="col-md-3 text-right">
            <a href="index.jsp" class="btn btn-success"><%= user.getName() %></a>
            <a href="Logout" class="btn btn-primary">Logout</a>
        </div>
        <% } %>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-list"></i> All categories</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-brands fa-product-hunt"></i> Products</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-store"></i></i> Store network</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-brands fa-servicestack"></i></i> Services</a>
      </li>
      
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0 mr-1" type="submit"><i class="fa-solid fa-gear"></i> Setting</button>
      <button class="btn btn-light my-2 my-sm-0" type="submit"><i class="fa-solid fa-phone-volume"></i> Contact Us</button>
    </form>
  </div>
</nav>

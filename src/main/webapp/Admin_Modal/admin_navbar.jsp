<%-- 
    Document   : admin_navbar
    Created on : Feb 1, 2024, 12:45:25?PM
    Author     : Pawan Kumar
--%>

<nav>
    <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard"><a href="admin.jsp">Home</a></span>
    </div>
    <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
    </div>
    <div class="profile-details">
        <img src="images/profile.jpg" alt="">
        <span class="admin_name"><%= user.getName() %></span>
        <i class='bx bx-chevron-down' ></i>
    </div>
</nav>

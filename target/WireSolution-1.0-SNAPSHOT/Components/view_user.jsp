<%-- 
    Document   : view_user
    Created on : Mar 21, 2024, 3:38:27?AM
    Author     : Pawan Kumar
--%>

<%@page import="com.learn.wiresolution.dao.UserDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.User" %>
<%@page import="java.util.List" %>
<%
//    CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
//    List<Category> category= categoryDao.getCategory();
      UserDao userDao = new UserDao(FactoryProvider.getFactory());
      List<User> userList= userDao.getAllUsers();
%>
<!-- Modal -->
<div class="modal fade" " id="viewuser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <% if(user!=null){ %>
                <form action="" method="post" enctype="multipart/form-data">
                    <input name="operation" value="product" hidden>
                    <div class="form-group">
                        <label for="exampleInputText1">Name</label>
                        <input type="text" name="name" value="<%= user.getName() %>" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter product name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputText1">Email</label>
                        <input type="email" name="brand_name" value="<%=user.getUserEmail() %>" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter brand name" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Address</label>
                        <input type="text" name="modal_name" value="<%=user.getAddress() %>" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter model name" required>
                    </div>
                    
                    
                    <div class="text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary ">Update</button>
                    </div>


                </form>
                    <% } %>
            </div>

        </div>
    </div>
</div>
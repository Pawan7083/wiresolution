<%-- 
    Document   : allUser
    Created on : Feb 1, 2024, 12:16:27?PM
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
<div class="modal fade" " id="all_user" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">User Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(User u:userList){
                        %>
                        <tr>
                            <th scope="row"><%= u.getId() %></th>
                            <td><%  %></td>
                            <td><%=u.getName() %></td>
                            <td><%=u.getUserEmail() %></td>
                            <td><%=u.getAddress() %></td>
                        </tr>

                        <%
                            }
                        %>

                    </tbody>
                </table>
                <div class="text-center">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                </div>
            </div>

        </div>
    </div>
</div>

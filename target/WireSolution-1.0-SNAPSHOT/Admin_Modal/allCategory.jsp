<%-- 
    Document   : allCategory
    Created on : Feb 1, 2024, 12:16:42?PM
    Author     : Pawan Kumar
--%>

<%@page import="com.learn.wiresolution.dao.CategoryDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.Category" %>
<%@page import="java.util.List" %>
<%
//    CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
//    List<Category> category= categoryDao.getCategory();

    %>
<!-- Modal -->
<div class="modal fade" id="all_category" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="ProductOperation" method="post" enctype="multipart/form-data">
                    <input name="operation" value="product" hidden>
                    
                    
                    <% 
                        for(Category c:category){
                        %>
                       
                    <div class="form-group">
                        <label for="exampleInputText1"><%= c.getcName() %></label>
                    </div>
                    <%
                        }
                        %>

                    <div class="text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           
                    </div>


                </form>
            </div>

        </div>
    </div>
</div>


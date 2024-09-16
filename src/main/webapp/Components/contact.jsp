<%-- 
    Document   : contact
    Created on : Mar 18, 2024, 1:46:35?AM
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
<div class="modal fade" id="contactpage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Contact Us...</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="ProductOperation" method="post" enctype="multipart/form-data">
                    <input name="operation" value="product" hidden>
                    <div class="form-group">
                        <label for="exampleInputText1">Name</label>
                        <input type="text" name="name" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter product name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputText1">Email</label>
                        <input type="email" name="email" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter brand name" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Mobile</label>
                        <input type="number" name="mobile" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter model name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputText1">Subject</label>
                        <input type="text" name="price" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter price" required="">
                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputText1"> Description</label>
                        <textarea type="text" name="desc" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter product description" required=""></textarea>

                    </div>

                    <div class="text-center">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary ">save</button>
                    </div>


                </form>
            </div>

        </div>
    </div>
</div>

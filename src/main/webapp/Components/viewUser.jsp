<%-- 
    Document   : viewUser
    Created on : Mar 17, 2024, 8:27:09?AM
    Author     : Pawan Kumar
--%>

<div class="modal fade" id="add_product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">User Detail</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="ProductOperation" method="post" enctype="multipart/form-data">
                    <input name="operation" value="product" hidden>
                    <div class="form-group">
                        <label for="exampleInputText1">Product Name</label>
                        <label for="exampleInputText1"></label>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Category</label>
                        <select class="custom-select" name="category">
                            <% 
                                for(Category c:category){
                                %>
                            <option  value="<%= c.getcId() %>"><%=  c.getcName()   %></option>
                            
                            <%
                                }
                                %>
                           
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Brand Name</label>
                        <input type="text" name="brand_name" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter brand name" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Model Name</label>
                        <input type="text" name="modal_name" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter model name" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="exampleInputText1">Price</label>
                        <input type="text" name="price" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter price" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Discount</label>
                        <input type="text" name="discount" class="form-control" id="exampleInputPassword1" placeholder="Enter discount price" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Quantity</label>
                        <input type="text" name="quantity" class="form-control" id="exampleInputPassword1" placeholder="Enter product quantity" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Picture</label>
                        <input type="file" name="picture" class="form-control" id="exampleInputPassword1" placeholder="choose file" required>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputText1">Product Description</label>
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

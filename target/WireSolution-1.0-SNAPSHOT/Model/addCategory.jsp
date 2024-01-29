<%-- 
    Document   : category
    Created on : Jan 29, 2024, 2:59:49?PM
    Author     : Pawan Kumar
--%>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="add_category" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>

                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="ProductOperation" method="post">
                    <input type="text" name="operation" value="category" hidden >
                    <div class="form-group">
                        <label for="exampleInputEmail1">Title</label>
                        <input type="text" name="title" class="form-control" id="exampleInputText1" aria-describedby="textHelp" placeholder="Enter title" required="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Description</label>
                        <textarea type="text" name="description" class="form-control" id="exampleInputText1" placeholder="Description" required style="height: 150px"></textarea>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-success ">save</button>
                    </div>
                </form>
            </div>
<!--            <div class="modal-footer">
                
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>-->
        </div>
    </div>
</div>
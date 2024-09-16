<%-- 
    Document   : allProduct
    Created on : Feb 1, 2024, 12:16:54?PM
    Author     : Pawan Kumar
--%>

<%@page import="com.learn.wiresolution.dao.ProductDao" %>
<%@page import="com.learn.wiresolution.dao.CategoryDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.Category" %>
<%@page import="com.learn.wiresolution.entities.Product" %>
<%@page import="java.util.List" %>
<%
//    CategoryDao categoryDao= new CategoryDao(FactoryProvider.getFactory());
//    List<Category> category= categoryDao.getCategory();
     ProductDao productDao= new ProductDao(FactoryProvider.getFactory());
     List<Product> productList= productDao.getAllProducts();
%>
<!-- Modal -->
<div class="modal fade" id="all_product" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table class="table table-hover">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Brand</th>
                            <th scope="col">Modal</th>
                            <th scope="col">Category</th>
                            <th scope="col">Quantity</th>
                            <th scope="col">Price</th>
                            <th scope="col">Discount</th>
                            <th scope="col">Image</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(Product p:productList){
                        %>
                        <tr>
                            <th scope="row"><%= p.getpId() %></th>
                            <td><%=p.getpName()  %></td>
                            <td><%=p.getpModal() %></td>
                            <td><%=p.getpBrand() %></td>
                            <% Category category1= p.getCategory();%>
                            <td><%=category1.getcName() %></td>
                            <td><%= p.getpQuantity()%></td>
                            <td><%=p.getpPrice() %></td>
                            <td><%= p.getpDiscount()%></td>
                            <td><%= p.getpPicture()%></td>
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

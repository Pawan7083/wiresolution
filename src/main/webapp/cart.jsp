<%-- 
    Document   : cart
    Created on : Mar 20, 2024, 11:27:55 AM
    Author     : Pawan Kumar
--%>

<%@page import="com.learn.wiresolution.dao.CategoryDao" %>
<%@page import="com.learn.wiresolution.dao.ProductDao" %>
<%@page import="com.learn.wiresolution.dao.CartDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.Category" %>
<%@page import="com.learn.wiresolution.entities.Product" %>
<%@page import="com.learn.wiresolution.entities.Wishlist" %>
<%@page import="com.learn.wiresolution.entities.Cart" %>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="java.util.List" %>

<%
//    int cId= Integer.parseInt(request.getParameter("c_id"));
//    CategoryDao categoryDao1= new CategoryDao(FactoryProvider.getFactory());
//    Category category1= categoryDao1.getCategory(cId);
    ProductDao productDao= new ProductDao(FactoryProvider.getFactory());
    
        int userId= Integer.parseInt(request.getParameter("user_id"));
        CartDao cartDao= new CartDao(FactoryProvider.getFactory());
        List<Cart> cartList= cartDao.getAllCart(userId);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add to cart</title>
        <%@include file="Components/common_css_js.jsp" %>

    </head>
    <body>
        <%@include file="Components/navbar.jsp" %>
        <div class="card-body text-center col-md-6"><%@include file="Components/message.jsp" %></div>
        <h1>Hello World!</h1>
        <div class="container">
            <div class="row " style="margin-bottom: 5px">
                <%
                   
                    for(Cart cart: cartList){
                       Product p= productDao.getProduct(cart.getProductId());
                    
                    %>
                <div class="col-md-3 mb-4">
                    <div class="card card-ho">
                        <div class="card-body text-center">
                            <img src="Images/Product/<%=p.getpPicture()%>" width="150px" height="200px" style="width: 200px ; height: 200px;margin-top: 1px" alt="alt" class="img-thumbnail"/>
                        <p><%=p.getpName()  %></p>
                        <p><%= p.getpModal() %></p>
                        <p><span style="color: #777;text-decoration: line-through"> <%=p.getpPrice() %></span><span style="color: red"> <%=p.getpDiscount() %>% Off</span></p>
                        <div class="row text-center">
                            <% 
                                if(user==null){
                            %>
                            <a href="login.jsp" class="btn  btn-sm ml-3" style="background-color: #303f9f;color: #fff;">Add Cart</a>
                            <%}
                                else {
                            %>
                            <a href="CartOperation?uId=<%= user.getId() %>&pId=<%= p.getpId() %>&operation=remove" class="btn btn-sm ml-3" style="background-color: #303f9f;color: #fff;">Remove</a>
                            <%
                                }
                            %>
                            <a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
                            <%
                                int sp= p.getpPrice()-(p.getpPrice()*p.getpDiscount())/100;
                                %>
                            <a href="" class="btn  btn-sm ml-1" style="background-color: #303f9f;color: #fff;"><%= sp %></a>
                        </div>
                    </div>
                    </div>
                </div>
                <%
                    
                    }
                    %>
                
            </div>
            
        </div>
        <%@include file="Components/footer.jsp" %>
    </body>
</html>
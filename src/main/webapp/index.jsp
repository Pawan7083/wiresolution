<%-- 
    Document   : index
    Created on : Jan 20, 2024, 8:40:51?AM
    Author     : Pawan Kumar
--%>

<%@page import="com.learn.wiresolution.dao.CategoryDao" %>
<%@page import="com.learn.wiresolution.dao.ProductDao" %>
<%@page import="com.learn.wiresolution.helper.FactoryProvider" %>
<%@page import="com.learn.wiresolution.entities.Category" %>
<%@page import="com.learn.wiresolution.entities.Product" %>
<%@page import="com.learn.wiresolution.entities.Wishlist" %>
<%@page import="org.hibernate.Session" %>
<%@page import="org.hibernate.Transaction" %>
<%@page import="org.hibernate.SessionFactory" %>
<%@page import="java.util.List" %>

<%
    ProductDao productDao= new ProductDao(FactoryProvider.getFactory());
    List<Product> product= productDao.getAllProducts();
    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wired Solution</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        
        <%@include file="Components/navbar.jsp" %>
        <%@include file="Components/message.jsp" %>

        <img src="Images/ele2.jpeg" width="100%" height="80vh" style="width: 100% ; height: 80vh;margin-top: 1px" alt="alt"/>
<!--        <div class="container-fluid index-back-img">
            <h2 style="text-align: center;color: #303f9f;"> Welcome To Alpha Brainly Store ! </h2>
        </div>-->
        <div class="container">
            <h1 class="text-center">Recent Added Items</h1>
            <div class="row " style="margin-bottom: 5px">
                <%
                    int i=0;
                    for(Product p: product){
                        if(i>=8)break;
                    
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
                            <a href="CartOperation?uId=<%= user.getId() %>&pId=<%= p.getpId() %>&operation=add" class="btn btn-sm ml-3" style="background-color: #303f9f;color: #fff;">Add Cart</a>
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
                    i++;
                    }
                    %>
                
            </div>
            <div class="text-center mt-2">
                <a href="view_all_product.jsp" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
        
        <hr>
        <div class="container">
            <h1 class="text-center">Our Missions</h1>
            <div class="row">
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho">
                        <div class="card-body text-center">
                            <img src="Images/static image/mission.png" width="100px" height="100px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">Mission</h2>
                        <p>Wired Solution?s mission is to serve the people of the regional area with world-class products at a price point that no one else could match.</p>
                        
                        <div class="text-center">
                            <a href="" class="btn btn-sm p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho ">
                        <div class="card-body text-center">
                            <img src="Images/static image/people.jpg" width="100px" height="100px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">People</h2>
                        <p>Customer satisfaction is something that is considered as the prime aim of Wired Solution.</p>
                        
                        <div class="text-center ">
                            <a href="seva_surksha.jsp" class="btn btn-sm m-4 p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho">
                        <div class="card-body text-center">
                            <img src="Images/static image/milestone.jpg" width="160px" height="160px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="mt-3"style="color:#303f9f">Milestone</h2>
                        <p>Over its? journey of a decade, the company has managed to achieve several milestones while creating new benchmarks for its competitors.</p>
                        
                        <div class="text-center">
                            <a href="" class="btn btn-sm p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        <hr>
        <div class="container">
            <h1 class="text-center">Our Services</h1>
            <div class="row">
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho">
                        <div class="card-body text-center">
                            <img src="Images/static image/seva.png" width="180px" height="180px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">Wired Seva</h2>
                        <p>Your one stop solution for electrical & electronic related grievances.</p>
                        
                        <div class="text-center">
                            <a href="seva_surksha.jsp" class="btn btn-sm m-4 p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho ">
                        <div class="card-body text-center">
                            <img src="Images/static image/surksha.png" width="160px" height="160px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">Wired Suraksha</h2>
                        <p>Wired Suraksha is the extended warranty programme of Wired Solution.</p>
                        
                        <div class="text-center ">
                            <a href="seva_surksha.jsp" class="btn btn-sm m-4 p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0 card-ho">
                        <div class="card-body text-center">
                            <img src="Images/static image/delivery.png" width="160px" height="160px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="mt-3"style="color:#303f9f">Express Delivery</h2>
                        <p>Customer satisfaction is something that is considered as the prime aim of Aditya Vision..</p>
                        
                        <div class="text-center">
                            <a href="service.jsp" class="btn btn-sm p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                
            </div>
            
        </div>
        
        <div>
            <div><h1 class="text-center">Our Brands</h1></div>
            <div>
                <p class="m-2 ml-4 mr-4">We sell products manufactured by some of the most renowned domestic and international brands. Over the years we have earned a reputation as a reliable and trusted retailer for these brands.</p>
                <img src="Images/static image/brandposter.png" style="width: 100% ; height: 80vh;margin-top: 1px; padding-left: 15px;padding-right: 15px;" alt="alt"/>

            </div>

        </div>
        
        
        <%@include file="Components/footer.jsp" %>
    </body>
</html>

<%-- 
    Document   : index
    Created on : Jan 20, 2024, 8:40:51?AM
    Author     : Pawan Kumar
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alpha Brainly</title>
        <%@include file="Components/common_css_js.jsp" %>
    </head>
    <body>
        <%
//            SessionFactory factory;
//            factory=FactoryProvider.getFactory();
//            out.println(factory);
//            Connection con=ConnectionProvider.getConnection();
//            out.println(con);
            
            %>
        <%@include file="Components/navbar.jsp" %>
        <div class="container-fluid index-back-img">
            <h2 style="text-align: center;color: #303f9f;"> Welcome To Alpha Brainly Store ! </h2>
        </div>
        <div class="container">
            <h1 class="text-center">Recent Book</h1>
            <div class="row">
                <div class="col-md-3">
                    <div class="card card-ho">
                        <div class="card-body text-center">
                            <img src="Image/java1.jpg" width="150px" height="200px" alt="alt" class="img-thumbnail"/>
                        <p>Java Programming</p>
                        <p>Balaguruswamy</p>
                        <p>Category : New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-ho">
                        <div class="card-body text-center">
                            <img src="Image/c++.jpg" width="150px" height="200px" alt="alt" class="img-thumbnail"/>
                        <p>Java Programming</p>
                        <p>Balaguruswamy</p>
                        <p>Category : New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-ho">
                        <div class="card-body text-center">
                            <img src="Image/c.jpg" width="150px" height="200px" alt="alt" class="img-thumbnail"/>
                        <p>Java Programming</p>
                        <p>Balaguruswamy</p>
                        <p>Category : New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card card-ho">
                        <div class="card-body text-center">
                            <img src="Image/java2.jpg" width="150px" height="200px" alt="alt" class="img-thumbnail"/>
                        <p>Java Programming</p>
                        <p>Balaguruswamy</p>
                        <p>Category : New</p>
                        <div class="row text-center">
                            <a href="" class="btn btn-danger btn-sm ml-3">Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View Detail</a>
                            <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-2">
                <a href="" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
        
        <hr>
        <div class="container">
            <h1 class="text-center">Our Missions</h1>
            <div class="row">
                <div class="col-md-4 ">
                    <div class="card border-0">
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
                    <div class="card border-0 ">
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
                    <div class="card border-0">
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
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img src="Images/static image/mission.png" width="100px" height="100px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">Wired Seva</h2>
                        <p>Your one stop solution for electrical & electronic related grievances.</p>
                        
                        <div class="text-center">
                            <a href="seva_surksha.jsp" class="btn btn-sm m-4 p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0 ">
                        <div class="card-body text-center">
                            <img src="Images/static image/people.jpg" width="100px" height="100px" alt="alt" class="img-thumbnail border-0"/>
                        <h2 class="m-2"style="color:#303f9f">Wired Suraksha</h2>
                        <p>Wired Suraksha is the extended warranty programme of Wired Solution.</p>
                        
                        <div class="text-center ">
                            <a href="seva_surksha.jsp" class="btn btn-sm m-4 p-2 pl-4 pr-4 text-light rounded-pill  " style="background-color:#303f9f">Details</a>
                            
                        </div>
                    </div>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="card border-0">
                        <div class="card-body text-center">
                            <img src="Images/static image/milestone.jpg" width="160px" height="160px" alt="alt" class="img-thumbnail border-0"/>
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
            </div>
            <div style="background: url('../Images/static image/brandPoster.jpg ');
    height: 80vh;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;">
                <p>hii</p>
            </div>
        </div>
        
        
        <%@include file="Components/footer.jsp" %>
    </body>
</html>

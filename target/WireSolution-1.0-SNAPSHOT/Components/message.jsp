<%-- 
    Document   : message
    Created on : Jan 25, 2024, 5:44:30?PM
    Author     : Pawan Kumar
--%>

<%
    String message= (String)session.getAttribute("message");
    if(message!=null){
    
    %>
   
<div class="alert alert-danger alert-dismissible fade show" role="alert">
  <strong><%= message %></strong>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
  <%
      }
       session.removeAttribute("message");
%>
<%-- 
    Document   : calchtml
    Created on : Nov. 2, 2020, 10:17:06 p.m.
    Author     : Owner
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<c:choose>
    <c:when test="${cookie['user_name'].getValue() == null}">
        <jsp:forward page="Login.jsp"></jsp:forward>
    </c:when>
</c:choose>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Omar's Auto: Service Appointment</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    
      body{
          background-image: url("apptbg.jpg");
          background-repeat: no-repeat;
          background-size:cover;
          color: white;
      }
      
      h1{
          font-family: impact;
          text-decoration: underline;
      }
      
      h3{
         font-family: impact;
         
      }
      
      h5{
         text-decoration: underline; 
         font-family: impact;
      }
      
      hr { 
                display: block; 
                margin-before: 0.5em; 
                margin-after: 0.5em; 
                margin-start: auto; 
                margin-end: auto; 
                overflow: hidden; 
                border-style: inset; 
                border-width: 2px;
                
            }
  </style>
    </head>
    <body>
        <h1><center>Omars Auto Shop</center></h1><hr>
        
        <div class='alert alert-success'>
        
            Welcome <strong>${cookie['user_name'].getValue()}</strong>
        </div>
        
        <% if(request.getAttribute("Error") !=null){ %>
        <div class="alert alert-danger">
  <strong>Error!</strong> Something went wrong! Please check all fields and re-submit.
</div>
<% } %> 
        
        <h3><u>Service appointment scheduler</u></h3><br><br>
        
        <% if(request.getAttribute("result") != null) { %> 
        <div class="alert alert-warning">
    <strong>Thank you!</strong> <%= request.getAttribute("result")  %>
  </div>
               
        <% } %> 
        
         <form action="FirstBackEnd" method="get">
             <form action="Vehicles" method="post">
             <h5>Customer Information</h5>
            First Name:<br> <input type="text" name="FirstName" required><br><!-- comment -->
            Last Name: <br> <input type="text" name="LastName" required><br> <!-- comment -->
            Cell Phone: <br> <input type="text" name="Cell" required><br>
            Email Address: <br> <input type="text" name="Email" required><br><br>
            
            <h5>Vehicle Information</h5>
            Year: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Make&Model:<br> <input type="text" name="year" required>        <input type="text" name="make" required><br><br>
            
            
            <h6>**Winter tire season**</h6>
            As most of you may know, we have entered the winter tire season,<br><!-- comment -->
            the busiest season of the year! While you all are a priority here at Omar's Auto,<br><!-- comment -->
            we do have limited spots available for service appointments. Selecting one of the<br><!-- comment -->
            options below will generate the earliest convenient appointment time for your vehicle.<br>
            If you have any questions or concerns, please don't hesitate to contact us with<br>
            your confirmation number at (305)-786-1979. We look forward in seeing you then!<br><br>
            
            
            <input type="radio" name="time" value="am"> Morning &nbsp;&nbsp;
            <input type="radio" name="time" value="pm"> Afternoon &nbsp;&nbsp;
            <input type="radio" name="time" value="we"> Weekend &nbsp;&nbsp;
            <input type="radio" name="time" value="evenings"> Evening &nbsp;&nbsp;<br><br>
            
            Comments:<br><textarea placeholder="Comments" name="comments" cols="40" rows="20" id="message"></textarea><br><br><br>
            <input type="Submit"> 
            
            <a href="Logout" class="btn btn-danger">Logout</a>
        </form>
    </body>
</html>

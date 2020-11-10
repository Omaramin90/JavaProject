<%-- 
    Document   : Login
    Created on : Nov. 4, 2020, 10:21:14 p.m.
    Author     : Owner
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:choose>
    <c:when test="${cookie['user_name'].getValue() != null}">
        <jsp:forward page="index.jsp"></jsp:forward>
    </c:when>
</c:choose>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Omar's Auto: Log in</title>
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
            
            body{
                background-color: black;
                background-size: cover;
                background-repeat: no-repeat;
                background-image: url(logpage2.jpg);
                color: white;
                
            }
            
            h1{
                font-family: impact;
                text-decoration: underline;
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
    <body><center>
                
        <br><h1>Login Page</h1><hr>
        
        <% if(request.getAttribute("Error") !=null){ %>
        <div class="alert alert-danger">
  <strong>Error!</strong> Incorrect Email or Password. Please try again.
</div>
<% } %> 
        <form action="Login" method="post">
        Email:<br> <input type="email" name="Email" required><br><!-- comment -->
        Password: <br> <input type="password" name="Password" required><br> <!-- comment -->
        
        <input type="Submit" value="Log in!"> <a href="Register.jsp">Register</a>
    </center></body>
</html>

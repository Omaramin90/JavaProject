<%-- 
    Document   : Register
    Created on : Nov. 3, 2020, 3:43:42 p.m.
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Omar's Auto: Register</title>
        <style>
            body{
             color: white;
             background-color: black;
             background-size: cover;
             background-repeat: no-repeat;
             background-image: url(regpage3.jpg);
                
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
        <h1>Register</h1><hr>
        
        <form action ="Register" method ="post">
        First Name:<br> <input type="text" name="FirstName" required><br><!-- comment -->
        Last Name: <br> <input type="text" name="LastName" required><br> <!-- comment -->
        Email:<br> <input type="email" name="Email" required><br><!-- comment -->
        Password: <br> <input type="password" name="Password" required><br> <!-- comment -->
        
        <input type="Submit" value="Register!"> <a href="Login.jsp">Log in</a>
    </center></body>
</html>

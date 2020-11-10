<%-- 
    Document   : newjsp
    Created on : Oct. 30, 2020, 5:36:51 p.m.
    Author     : Owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Result page</h1>
        
        <h2><%= request.getAttribute("result")  %></h2>
    </body>
</html>

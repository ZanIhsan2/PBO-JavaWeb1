<%-- 
    Document   : index
    Created on : 11 Dec 2025, 13.51.02
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>My App</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <%@include file="header.jsp" %>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <%@include file="menu.jsp" %>
                </div>
            </div>
                <br>
            <div class="row">
                <div class="col-md-8">
                    <%@include file="main.jsp" %>
                </div>
                <div class="col-md-4">
                    <%@include file="sidebar.jsp" %>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <%@include file="footer.jsp" %>
                </div>
            </div>
        </div>

        <script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>

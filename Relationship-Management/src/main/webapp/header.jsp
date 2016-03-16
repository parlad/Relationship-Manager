<%-- 
    Document   : header
    Created on : Mar 5, 2016, 2:11:13 PM
    Author     : parlad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relationship-Management</title>
        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div>
                <nav class="navbar navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="personal.jsp">Relationship Management System</a>
                        </div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="loan.jsp">Loan Management</a></li>
                            <li><a href="mail.jsp">Sent Mail</a></li>
                            <li><a href="mailView.jsp">Mail View</a></li>
                            <li><a href="addPeople.jsp">Add people</a></li>
                            <li><a href="${SITE_URL}/Relationship-Management/personal">Personal info</a></li>
                            <li><a href="${SITE_URL}/Relationship-Management/logout">Logout</a></li>
                        </ul>
                        
                    </div>

                </nav>




<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="bootstrap/jquery.min.js" type="text/javascript"></script>

    </head>
    <body>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">WebSiteName</a>
                    <a class="navbar-brand" href="${SITE_URL}/Relationship-Management/personal">Personal</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <!--                    <ul class="nav navbar-nav">
                                            <li class="active"><a href="personal.jsp">Home</a></li>
                                            <li class="dropdown">
                                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Page 1-1</a></li>
                                                    <li><a href="#">Page 1-2</a></li>
                                                    <li><a href="#">Page 1-3</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Page 2</a></li>
                                            <li><a href="#">Page 3</a></li>
                                        </ul>-->
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="${SITE_URL}/Relationship-Management/login"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                        <li><a href=""><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <h3>Welcome to our system </h3>
            <p>Please enter the required information</p>
        </div>


        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">First Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="firstName">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Last Name</label>
                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="lastName">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Address</label>
                <input type="text" class="form-control" id="exampleInputEmail1" placeholder="address">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Contact</label>
                <input type="number" class="form-control" id="exampleInputEmail1" placeholder="contact">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="lastName">
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox"> Check me out
                </label>
            </div>
            <button type="submit" class="btn btn-default" value="personal.jsp">Submit</button>
        </form>

        <%@include file="footer.jsp" %>
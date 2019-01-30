<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Create Students</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../resources/css/logo-nav.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="/">
            <img src="../../resources/img/Metric-Gaming.jpg" width="150" height="30" alt="">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">

            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="studentId" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Students
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                        <a class="dropdown-item" href="/student/loadStudent">Create</a>
                        <a class="dropdown-item" href="/student/getAllStudents">View</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container" style="padding-top: 2%">
    <h2>Create Student</h2>
    <spring:url value="/student/createStudent" var="saveURL"/>
    <form:form class="form-horizontal" modelAttribute="studentForm" method="post" action="${saveURL}">
        <form:hidden path="id"/>
        <div class="row">
            <label class="control-label col-sm-2" for="fname">First Name:</label>
            <div class="col-sm-10">
                <form:input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="firstName" path="firstName"></form:input>
            </div>
        </div>

        <div class="row">
            <label class="control-label col-sm-2" for="lname">Last Name:</label>
            <div class="col-sm-10">
                <form:input  type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lastName" path="lastName"></form:input>
            </div>
        </div>

        <div class="row">
            <label class="control-label col-sm-2" for="age">Age:</label>
            <div class="col-sm-10">
                <form:input  type="number" class="form-control" id="age" placeholder="Enter Age" name="age" path="age"></form:input>
            </div>
        </div>

        <div class="row">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <form:input  type="email" class="form-control" id="email" placeholder="Enter Email" name="email" path="email"></form:input>
            </div>
        </div>

        <div class="row">
            <label class="control-label col-sm-2" for="address">Address:</label>
            <div class="col-sm-10">
               <form:textarea type="text" class="form-control" id="address" name="address"
                         placeholder="Enter Address" path="address"></form:textarea>
            </div>
        </div>
        <br/>
        <div class="row" style="float: right">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary" style="width: 100px">Save</button>
            </div>
        </div>
    </form:form>
</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

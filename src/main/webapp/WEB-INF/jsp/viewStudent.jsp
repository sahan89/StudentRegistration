<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Students</title>

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
    <h2>View Students</h2>
    <div class="container">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Address</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${studentList}" var="student">
            <tr>
                <td>${student.firstName}</td>
                <td>${student.lastName}</td>
                <td>${student.age}</td>
                <td>${student.email}</td>
                <td>${student.address}</td>
                <td><spring:url value="/student/updateStudent/${student.id}" var="updateURL"/>
                    <a class="btn btn-primary" href="${updateURL}" role="button">Update</a>
                </td>
                <td><spring:url value="/student/deleteStudent/${student.id}" var="deleteURL"/>
                    <a class="btn btn-danger" href="${deleteURL}" role="button">Delete</a>
                </td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->
<script src="../../resources/vendor/jquery/jquery.min.js"></script>
<script src="../../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

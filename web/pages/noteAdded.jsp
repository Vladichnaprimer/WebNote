<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enter</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

    <style type="text/css">
            #centerText{
                margin-left: 40%;
                margin-top: 5%;
            }
    </style>

</head>

<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/profile.jsp">Profile<span
                            class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="centerText">
         <p>Note "${note.title}" successfully added!</p>
    </div>

</body>
</html>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>

<head>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />
</head>

<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
    </nav>

    <div id="container">

        <h2>User "${user.name}" successfully added!</h2>
            <form  action="${pageContext.request.contextPath}/index.htm" method="post" role="form" class="form-inline">
                    <h2>Please corfirm your account:</h2>
                    <button type="submit" class="btn btn-success">Sign In</button>

                    <input type="hidden" name="${_csrf.parameterName}"
                                            value="${_csrf.token}" />
            </form>
    </div>

</body>
</html>

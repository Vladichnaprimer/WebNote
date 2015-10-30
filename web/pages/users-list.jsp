<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-full-house.js"></script>
    <script type="text/javascript" rel="javascript"
            src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>


    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css"/>

    <title>Users</title>

</head>
<body>
<nav class="navbar navbar-default navbar-static-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <security:authorize access="isAuthenticated()">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/createNote.jsp">Create <span
                            class="sr-only">(current)</span></a></li>
                    <security:authorize access="hasRole('vladich@gmail.com')">
                        <li class="btn-large"><a href="${pageContext.request.contextPath}/users/user-list.htm">Users <span
                                class="sr-only">(current)</span></a></li>
                    </security:authorize>
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/index.htm">Logout <span
                            class="sr-only">(current)</span></a></li>

                </ul>
            </div>
        </div>
    </security:authorize>
</nav>
<div class="container">
    <table style="width: 100%; margin-left: 20px">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email/Login</th>
            <th>&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="u" items="${users}">
            <tr>
                <td>${u.id} </td>
                <td>${u.name} </td>
                <td>${u.email} </td>
                <td>
                    <form action="${pageContext.request.contextPath}/users/delete.htm" method="post">
                        <input type="hidden" value="${u.id}" name="id"/>
                        <button type="submit" id="submit" class="btn btn-danger">Delete</button>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Editor</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

</head>

<body>
    <nav class="navbar navbar-default navbar-static-top navbar-fixed-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
        <security:authorize access="isAuthenticated()">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/profile.jsp">Profile <span
                                            class="sr-only">(current)</span></a></li>
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/index.htm">Logout <span
                                            class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
        </security:authorize>
    </nav>

    <div style=" margin-left: 25%;
             margin-top: 10px;
             width: 500px;
             padding: 2px;">
        <br/><br/>
        <h1 style="font-size:58px">WebNotes</h1>
            <h2><small>Create your notes</small></h2>
        <form  action="${pageContext.request.contextPath}/createNote.htm" method="post" role="form" class="form-inline">
            <br/>
            <div class="form-group">
                    <input type="text" class="form-control" name="title" placeholder="Title" />
            </div>
            <hr/>
                    <textarea class="textarea form-control"  name="text" placeholder="Enter text ..."
                              style="width: 600px; height: 200px" ></textarea>
            <br/>
            <br/>
            <input type="hidden" name="userId.id" value="${sessionScope.user.id}"/>
            <button style="width:35% " type="submit" class="btn btn-success">Create</button>

            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
        </form>

    </div>
</body>
</html>

<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Editor</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" media="screen" />
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

</head>

<body>

<nav class="navbar navbar-default navbar-static-top navbar-fixed-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Sign In <span class="sr-only">(current)</span></a></li>
               <!-- <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li> -->

            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="hero-unit" style="margin-top:60px">
        <h1 style="font-size:58px">WebNotes <small>Create your notes</small></h1>
        <form  action="${pageContext.request.contextPath}/createNote.htm" method="post" role="form" class="form-inline">
            <br/>
            <div class="form-group">
                    <input type="text" class="form-control" name="title" placeholder="Title" />
            </div>
            <hr/>
            <textarea class="textarea" name="text" placeholder="Enter text ..." style="width: 830px; height: 200px" ></textarea>
            <br/>
            <br/>
            <button type="submit" class="btn btn-success">Create</button>
        </form>
    </div>
</div>
</body>
</html>

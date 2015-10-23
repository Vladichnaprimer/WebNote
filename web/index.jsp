<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>

<html>
<head>

    <title>Enter</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
    <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css"/>


</head>
<body>
<%--    <form  action="${pageContext.request.contextPath}/enter.htm" method="post" role="form" class="form-inline">
      <div class="form-group">
            <input type="text" class="form-control" name="j_username" placeholder="Login/Email">
        </div>
        <br/>
        <div class="form-group">
            <input type="password" class="form-control" name="j_password" placeholder="Password">
        </div>
        <br/><br/>
        <div class="form-group">
            <p>  <input type="checkbox" class="form-control" name="_spring_security_remember_me"> Remember me</p>
        </div>
        <br/><br/>
   </form>--%>
<nav class="navbar navbar-default navbar-static-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <%--<security:authorize access="isAuthenticated()">--%>
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create <span
                            class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
    <%--</security:authorize>--%>
</nav>
<div id="container">

    <%--<form action="${pageContext.request.contextPath}/enter.htm" method="post" role="form" class="form-inline">

        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Login/Email">
        </div>
        <br/>

        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <br/><br/>
        <button type="submit" class="btn btn-success">Login</button>

    </form>--%>
    <form action="/j_spring_security_check" method="post" role="form" class="form-inline">

        <div class="form-group">
            <input type="text" class="form-control" name="j_username" placeholder="Login/Email">
        </div>
        <br/>

        <div class="form-group">
            <input type="password" class="form-control" name="j_password" placeholder="Password">
        </div>
        <br/><br/>
        <button type="submit" class="btn btn-success">Login</button>

    </form>
    <form action="registr.jsp">
        <button type="submit" class="btn btn-success"> Sign Up</button>
    </form>

    <%-- <button type="submit" id="login_button" class="small_button">Login</button>--%>


</div>
</body>
</html>

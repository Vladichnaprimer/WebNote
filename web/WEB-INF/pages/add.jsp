<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

</head>

<body>

<nav class="navbar navbar-default navbar-static-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create <span class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>


<div id="container">
    <h1><p>User "${user.name}" successfully added!</p></h1>
    <h2>Please Log In</h2>

        <form  action="${pageContext.request.contextPath}/enter.htm" method="post" role="form" class="form-inline">
            <div class="form-group">
                <input type="text" class="form-control" name="email" placeholder="Login/Email">
            </div>
            <br/>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password">
            </div>
            <br/><br/>
            <button type="submit" class="btn btn-success">Sign In</button>
        </form>
        <%--        <form action="${pageContext.request.contextPath}/j_spring_security_check" method="post" role="form" class="form-inline">
                    <div class="form-group">
                        <input type="text" class="form-control" name="j_username" placeholder="Login/Email">
                    </div>
                    <br/>
                    <div class="form-group">
                        <input type="password" class="form-control" name="j_password" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="checkbox" class="form-control" name="_spring_security_remember_me" placeholder="Password">
                    </div>
                    <br/><br/>
                    <button type="submit" class="btn btn-success">Sign In</button>
                </form>--%>

</div>

</body>
</html>

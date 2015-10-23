<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
    <title>Enter</title>
    <link href="css/bootstrap.css" rel="stylesheet">
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
                <%--<li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Back <span class="sr-only">(current)</span></a></li>--%>
                 <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li>
              <%--<sec:authorize access="isAuthenticated()">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                            class="sr-only">(current)</span></a></li>
                </sec:authorize>
               --%>

            </ul>
            <form class="navbar-form navbar-left navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control">
                </div>
                <button type="submit" class="btn btn-default">Search</button>
            </form>
        </div>
    </div>
</nav>
    <div id="centerText">
         <p>
             Note "${note.title}" successfully added!
         </p>
    </div>
</body>
</html>

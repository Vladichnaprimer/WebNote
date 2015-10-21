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



    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-30181385-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</head>

<body>

<nav class="navbar navbar-default navbar-static-top">
    <div class="nav navbar-nav">
        <a class="navbar-brand" href="#">WebNote</a>
    </div>
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="btn-large"><a href="${pageContext.request.contextPath}/registr.jsp">Sign Up <span class="sr-only">(current)</span></a></li>
                <li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Sign In<span class="sr-only">(current)</span></a></li>
                <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span class="sr-only">(current)</span></a></li>

            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="hero-unit" style="margin-top:60px">
        <h1 style="font-size:58px">WebNotes <small>Edit your notes</small></h1>
        <hr/>
        <textarea class="textarea" placeholder="Enter text ..." style="width: 830px; height: 500px"></textarea>
    </div>
</div>

</body>
</html>
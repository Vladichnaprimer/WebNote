<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Editor</title>
    <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstraphtml5.css" />


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
                <li class="btn-large"><a href="${pageContext.request.contextPath}/enter.jsp">Sign In <span class="sr-only">(current)</span></a></li>
               <!-- <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li> -->

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

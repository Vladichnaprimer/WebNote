<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>

<head>
    <title>Enter</title>
    <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstraphtml5.css" />

    <style type="text/css">
            #centerText{
                margin-left: 40%;
                margin-top: 5%;
            }
    </style>
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
                <li class="btn-large"><a href="${pageContext.request.contextPath}/enter.jsp">Back <span class="sr-only">(current)</span></a></li>
                <!--  <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li>-->
<%--                <sec:authorize access="isAuthenticated()">
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

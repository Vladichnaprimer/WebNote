<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>

<html>
<head>
    <title>Enter</title>
        <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
        <link href="css/bootstrap-theme.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/prettify.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstraphtml5.css" />

        <style type="text/css">
            #centerLayer {
                margin-left: 40%; /* Отступ слева */
                margin-top: 5%;
                width: 20%; /* Ширина слоя */
                background: #D9D9D9; /* Цвет фона */
                padding: 10px; /* Поля вокруг текста */
                border: none;
        }

            #centerForm{
                margin-left: 23%;
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
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Back <span class="sr-only">(current)</span></a></li>
                  <!--  <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li>-->
                    <sec:authorize access="!isAuthenticated()">
                        <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                                class="sr-only">(current)</span></a></li>
                    </sec:authorize>
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

<div id="centerLayer">
    <div id="centerForm" >
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
</div>

</body>
</html>

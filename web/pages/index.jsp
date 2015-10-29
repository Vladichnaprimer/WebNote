<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>

<html>
<head>

    <title>Enter</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css"/>
    <script type="text/javascript"  src="js/jquery-2.1.4.min.js"></script>

    <style type="text/css">
        .ok{
            border: 1px solid green;
        }
        .error{
            border: 1px solid red;
        }
    </style>

</head>
<body>

    <nav class="navbar navbar-default navbar-static-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
    </nav>

    <div id="container">

        <hr/>
        <spring:url var="authUrl" value="/j_spring_security_check" />

        <form action="${pageContext.request.contextPath}/j_spring_security_check" method="post" role="form" class="form-inline">

            <div class="form-group">
                <input  id="mail" type="text" class="form-control" name="email"
                                    placeholder="Email" pattern="\S+@[a-z]+.[a-z]+"
                <%-- pattern="/^[a-z0-9_-]+@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6} $/i"--%> required />
                <span id="valid"></span>
            </div>
            <br/>
            <div class="form-group">
                <input type="password" class="form-control" name="password"  placeholder="Password" required >
            </div>
            <br/><br/>
            <div class="checkbox">
                <p><input type="checkbox"  name="_spring_security_remember_me" >Remember me</p>
            </div>
            <button type="submit" id="submit" class="btn btn-success">Login</button>

            <input type="hidden" name="${_csrf.parameterName}"
                    value="${_csrf.token}" />
        </form>

        <form action="pages/registr.jsp">
            <button  type="submit" class="btn btn-success">Sign Up</button>
        </form>

    <script>
        $(document).ready(function(){
            var pattern = /^[a-z0-9_-]+@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6} $/i ;
            var mail = $('#mail');
            mail.blur(function(){
                if(mail.val() != ''){
                    if(mail.val().search(pattern) == 0){
                        $('#valid').text('Right');
                        mail.removeClass('error').addClass('ok');
                    }else{
                        $('#valid').text('Wrong');
                        mail.addClass('ok');
                    }
                }else{
                    $('#valid').text('Field "email" can not be empty! ');
                    mail.addClass('error');
                }
            });
        });
    </script>



</div>
</body>
</html>



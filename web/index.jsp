<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>

<html>
<head>
    <link href="css/styles.css" rel="stylesheet">
   <title>Enter</title>
     <%--   <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" media="screen" />
        <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />--%>

       <%-- <style type="text/css">
            #centerLayer {
                margin-left: 40%; /* Отступ слева */
                margin-top: 5%;
                width: 100%; /* Ширина слоя */
                background: white; /* Цвет фона */
                padding: 10px; /* Поля вокруг текста */
                border: none;
        }

            #centerForm{
                margin-left: 0%;
            }
        </style>
    --%>
</head>

    <body>

<%--    <nav class="navbar navbar-default navbar-static-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/registr.jsp">Sign Up <span class="sr-only">(current)</span></a></li>
                  <!--  <li class="btn-large"><a href="${pageContext.request.contextPath}/editor.jsp">Editor<span class="sr-only">(current)</span></a></li>-->
                    <sec:authorize access="!isAuthenticated()">
                        <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                                class="sr-only">(current)</span></a></li>
                    </sec:authorize>
                </ul>

            </div>
        </div>
    </nav>--%>

<<div id="centerLayer">
    <div id="centerForm" >
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

   </div>
</div>

<div id="container">

    <form action="${pageContext.request.contextPath}/enter.htm" method="post" role="form" class="form-inline">

        <div class="form-group">
            <input type="text" class="form-control" name="email" placeholder="Login/Email">
        </div>
        <br/>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>
        <br/><br/>
        <button type="submit" class="btn btn-success">Login</button>
        <button> <a href="registr.jsp" class="btn btn-success">Sign Up</a> </button>
    </form>

    <div id="error_message"></div>

   <%-- <button type="submit" id="login_button" class="small_button">Login</button>--%>



    <!--footer-->
    <div id="footer">
    </div>

</div>

<%--<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/store.js"></script>
<script src="js/javarest.js"></script>
<script src="js/cookie.js"></script>
<script src="js/user.js"></script>
<script type="text/javascript">
    $(document).ready(function () {


        window.fbAsyncInit = function() {
            FB.init({
                appId      : '133718006790561', // App ID
                status     : true, // check login status
                cookie     : true, // enable cookies to allow the server to access the session
                xfbml      : true  // parse XFBML
            });

            $('.fb').on('click', function () {

                FB.login(function(response) {
                    console.log(response)
                    if (response.authResponse) {

                        javaRest.user.loginSocial(response.authResponse.accessToken, function (error) {
                            if (error)
                                console.log(error)
                            else
                                window.location = 'dashboard.html'
                        })
                        console.log('Welcome!  Fetching your information.... ');
                        FB.api('/me', function(response) {
                            console.log('Good to see you, ' + response.name + '.');
                        });
                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                });

            })
        };
        // Load the SDK Asynchronously
        (function(d){
            var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
            if (d.getElementById(id)) {return;}
            js = d.createElement('script'); js.id = id; js.async = true;
            js.src = "//connect.facebook.net/en_US/all.js";
            ref.parentNode.insertBefore(js, ref);
        }(document));

        // Submit form on enter
        $('input').live('keydown', function (event) {
            if (event.keyCode === 13)
                $('#login_button').click()
        })

        if (javaRest.user.is_logged_in())
            window.location = 'dashboard.html'
        $('#login_button').on('click', function () {


            if (!$('#agree').is(':checked'))
                return $('#error_message').html('You must agree to the terms of service.').show()

            javaRest.user.create($('#firstName').val(), $('#email').val(), $('#password').val(), '', function (error) {
                if (!error)
                    window.location = 'dashboard.html'
                else {
                    console.log(error)
                    if (error.status == '409')
                        $('#error_message').html('Email already registered.').show()
                    else
                        $('#error_message').html('Please fix your email address/password.').show()
                }
            })
        })

    })
</script>--%>



</body>
</html>

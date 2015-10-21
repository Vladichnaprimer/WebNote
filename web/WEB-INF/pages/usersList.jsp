
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script type="text/javascript" rel="javascript"
          src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
  <title></title>
  <link href="css/bootstrap.css" rel="stylesheet" media="screen"/>
  <link href="css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/prettify.css"/>
  <link rel="stylesheet" type="text/css" href="css/bootstraphtml5.css"/>

  <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-30181385-1']);
    _gaq.push(['_trackPageview']);

    (function () {
      var ga = document.createElement('script');
      ga.type = 'text/javascript';
      ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(ga, s);
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
        <li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Sign Up <span
                class="sr-only">(current)</span></a></li>
        <li class="btn-large"><a href="${pageContext.request.contextPath}/enter.jsp">Sign In<span
                class="sr-only">(current)</span></a></li>
        <%-- <sec:authorize access="isAuthenticated()">
             <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                     class="sr-only">(current)</span></a></li>
         </sec:authorize>--%>
        <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                class="sr-only">(current)</span></a></li>
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


</body>
</html>

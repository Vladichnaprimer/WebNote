
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script type="text/javascript" rel="javascript"
          src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
  <title></title>
  <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" media="screen"/>
  <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css"/>

</head>
<body>

<nav class="navbar navbar-default navbar-static-top">
  <div class="nav navbar-nav">
    <a class="navbar-brand" href="#">WebNote</a>
  </div>
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         <sec:authorize access="isAuthenticated()">
             <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                     class="sr-only">(current)</span></a></li>
         </sec:authorize>
<%--        <li class="btn-large"><a href="${pageContext.request.contextPath}/createNote.jsp">Create<span
                class="sr-only">(current)</span></a></li>--%>
      </ul>
    </div>
  </div>
</nav>


</body>
</html>

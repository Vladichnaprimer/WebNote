<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<jsp:useBean id="_csrf" scope="request" type="org.springframework.security.web.csrf.CsrfAuthenticationStrategy"/>--%>
<!DOCTYPE html>

<html>
  <head>
    <title>Sign Up</title>
      <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

</head>

<body>
  <nav class="navbar navbar-default navbar-static-top">
      <div class="nav navbar-nav">
          <a class="navbar-brand" href="#">WebNote</a>
      </div>
  </nav>

  <div id="container">

    <form  action="${pageContext.request.contextPath}/add.htm" method="post" role="form">
      <div class="form-group">
          <input type="text" class="form-control" name="name" placeholder="Name"  required>
      </div>
      <br/>
      <div class="form-group">
          <input type="text" class="form-control" name="email"
                 placeholder="Email"  required pattern="\S+@[a-z]+.[a-z]+">
      </div>
      <br/>
      <div class="form-group">
          <input type="password" class="form-control" name="password" placeholder="Password" required>
      </div>
      <br/><br/>
      <button type="submit" class="btn btn-success">Sign Up</button>


      <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}" />
    </form>

  </div>
</body>
</html>

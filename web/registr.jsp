<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>
  <head>
    <title>Sign Up</title>
      <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" media="screen" />
      <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

      <style type="text/css">
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
  </head>

  <body>

  <nav class="navbar navbar-default navbar-static-top">
      <div class="nav navbar-nav">
          <a class="navbar-brand" href="#">WebNote</a>
      </div>
      <div class="container-fluid">
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                  <li class="btn-large"><a href="${pageContext.request.contextPath}/index.jsp">Sign In <span class="sr-only">(current)</span></a></li>
              </ul>
          </div>
      </div>
  </nav>
<div id="centerLayer">
    <div id="centerForm">
    <form  action="${pageContext.request.contextPath}/add.htm" method="post" role="form" class="form-inline">
      <div class="form-group">
          <input type="text" class="form-control" name="Name" placeholder="Name">
      </div>
      <br/>
      <div class="form-group">
          <input type="text" class="form-control" name="email" placeholder="Login/Email">
      </div>
      <br/>
      <div class="form-group">
          <input type="password" class="form-control" name="password" placeholder="Password">
      </div>
      <br/><br/>
      <button type="submit" class="btn btn-success">Sign Up</button>
    </form>
    </div>
</div>
</body>
</html>

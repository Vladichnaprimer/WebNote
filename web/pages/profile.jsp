<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-full-house.js"></script>
    <script type="text/javascript" rel="javascript"
            src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>


    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap-theme.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/prettify.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstraphtml5.css" />

    <title>Profile</title>

    <script>
        function showContent(link) {

            var cont = document.getElementById('contentBody');
            var loading = document.getElementById('loading');

            cont.innerHTML = loading.innerHTML;

            var http = createRequestObject();
            if( http )
            {
                http.open('get', link);
                http.onreadystatechange = function ()
                {
                    if(http.readyState == 4)
                    {
                        cont.innerHTML = http.responseText;
                    }
                }
                http.send(null);
            }
            else
            {
                document.location = link;
            }
        }

        // создание ajax объекта
        function createRequestObject()
        {
            try { return new XMLHttpRequest() }
            catch(e)
            {
                try { return new ActiveXObject('Msxml2.XMLHTTP') }
                catch(e)
                {
                    try { return new ActiveXObject('Microsoft.XMLHTTP') }
                    catch(e) { return null; }
                }
            }
        }
    </script>

</head>
<body>
    <nav class="navbar navbar-default navbar-static-top">
        <div class="nav navbar-nav">
            <a class="navbar-brand" href="#">WebNote</a>
        </div>
        <security:authorize access="isAuthenticated()">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/pages/createNote.jsp">Create <span
                            class="sr-only">(current)</span></a></li>
                    <li class="btn-large"><a href="${pageContext.request.contextPath}/index.htm">Logout <span
                            class="sr-only">(current)</span></a></li>
                </ul>
            </div>
        </div>
        </security:authorize>
    </nav>
    <div class="container">
        <table style="width: 100%; margin-left: 20px">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email/Login</th>
                <th>Notes List</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${user.id} </td>
                <td>${user.name} </td>
                <td>${user.email} </td>
                <td>
                    <c:forEach var="note" items="${user.noteList}">
                        <p><a href="${pageContext.request.contextPath}/editor/${note.id}.htm"><c:out value="${note.title}"/></a></p>
                    </c:forEach>
                </td>
            </tr>
            </tbody>
        </table>
    </div>


    <%--<form>
        <input onclick="showContent('/pages/createNote.jsp') "type="button" value="Page1">
        <input onclick="showContent('/editor.jsp')" type="button" value="Page2">
    </form>

    <div id="contentBody">
    </div>

    <div id="loading" style="display: none">
        Laoding . . .
    </div>--%>

</body>
</html>

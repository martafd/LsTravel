<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/mystyle.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
    <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>
</head>
<body>
<div id = "header">
<img src="../../resources/images/1.jpg" alt="logo" height="200" width="1202"/>
<div class="navbar navbar-default navbar-centered navbar-inverse">
     <div class="container">
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/">ГЛАВНАЯ</a></li>
                        <li><a href="/rules">ТУРЫ</a></li>
                        <li class="dropdown">
                           <a class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">НОВОСТИ<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/feed">Default</a></li>
                                <li><a href="/rss">RSS</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ФОРУМ<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="/forum">Default</a></li>
                                <li><a href="/forum-ajax">AJAX</a></li>
                            </ul>
                        </li>
                        <li><a href="/faq">FAQ</a></li>
                        <li><a href="/ticket">ЗАКАЗ БИЛЕТОВ</a></li>
                    </ul>
                    <div class="pull-right">
                        <%--<a href="/logout"/>">Logout</a>--%>
                        <sec:authorize access="!isAuthenticated()">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="/signup"><span class="glyphicon glyphicon-user"></span>Регестрация</a></li>
                                <li><a href="/signin"><span class="glyphicon glyphicon-log-in"></span> Вход</a></li>
                            </ul>
                        </sec:authorize>
                        <sec:authorize access="isAuthenticated()">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a>Hello <sec:authentication property="principal.username"/>!</a></li>
                                <li><a href="/signout"><span class="glyphicon glyphicon-log-in"></span> Виход</a></li>
                            </ul>
                        </sec:authorize>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

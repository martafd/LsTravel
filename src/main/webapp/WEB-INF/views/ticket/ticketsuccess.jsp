<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 13.01.16
  Time: 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <title>Success!</title>
</head>
<body>
<div class="container">
  <div class="constructor">
    <div class="jumbotron">
      <h1> Ваш заказ принят ! </h1>
      <p><a class="btn btn-lg btn-success" href="/" role="button">На главную</a></p>
    </div>
  </div>
</div>
</body>
</html>

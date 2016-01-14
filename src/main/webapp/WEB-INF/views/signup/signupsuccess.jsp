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
      <h1>Регестрация успешна!!</h1>
      <h2>Добро пожаловать ${userEntity.name}</h2>
      <h2>Добро пожаловать ${userEntity.surname}</h2>
      <h2>Добро пожаловать ${userEntity.email}</h2>
      <h2>Добро пожаловать ${userEntity.password}</h2>
      <h2>Добро пожаловать ${confrimpass}</h2>
      <p><a class="btn btn-lg btn-success" href="/" role="button">На главную</a></p>
    </div>
  </div>
</div>
</body>
</html>

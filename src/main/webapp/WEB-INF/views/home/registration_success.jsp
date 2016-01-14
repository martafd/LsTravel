<%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        <%@include file='../../../resources/css/bootstrap.min.css' %>
    </style>
    <title></title>
</head>
<body>

<div class="jumbotron">
    <h1>Регестрация успешна!!</h1>
    <h2>Добро пожаловать:${greetingMessage}!</h2>
    <h3>Імя: ${userEntity.userName}</h3>
    <h3>email: ${userEntity.email}</h3>
    <h3>Собщение: ${userEntity.message}</h3>
    <h3>Дата: ${userEntity.date}</h3>
    <h3>Навыки: ${userEntity.skills}</h3>
    <p><a class="btn btn-lg btn-success" href="/registration" role="button">Главная</a></p>
</div>
</body>
</html>

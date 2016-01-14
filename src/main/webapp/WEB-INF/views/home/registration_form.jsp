<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<html>
<head>
    <style>
        <%@include file='../../../resources/css/bootstrap.min.css' %>
    </style>
    <title></title>
</head>
<body>
<form:errors path="userEntity.*"/>
<div class="alert alert-success">
    <h1>${greetingMessage}</h1>
    <h2>Registration</h2>
    <form class="form-horizontal" action="/submit" method="post">
        <div class="form-group">
            <label class="control-label col-xs-3">Name</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="userName" placeholder="Enter your name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">E-mail</label>
            <div class="col-xs-9">
                <input type="email" pattern="\S+@[a-z]+.[a-z]+" class="form-control" name="email" placeholder="Введите ваш e-mail">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Дата</label>
            <div class="col-xs-9">
                <input type="text" class="form-control" name="date" placeholder="Введите дату">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Коментарий</label>
            <div class="col-xs-9">
                <textarea rows="7" class="form-control" name="message" placeholder="Введите ваш коментарий"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">E-mail</label>
            <div class="col-xs-9">
                <select name = "skills" multiple>
                    <option value="Java Core">Java Core</option>
                    <option value="Spring Core">Spring Core</option>
                    <option value="Spring MVC">Spring MVC</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-xs-offset-3 col-xs-9">
                <input type="submit" class="btn btn-primary" value="Регестрация">
                <input type="reset" class="btn btn-default" value="Очистить поля">
            </div>
        </div>

    </form>
</div>
</body>
</html>

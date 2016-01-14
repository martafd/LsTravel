<%--
  Created by IntelliJ IDEA.
  User: marta
  Date: 13.01.16
  Time: 0:14
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>
</head>
<body>
<div>
    <jsp:include page="../fragments/header.jsp"/>
</div>
<div class="container">
    <div class="constructor">
        <div class="alert alert-success">
            <h2>Заказ билетов</h2>

            <form class="form-horizontal" action="/ticket" method="post">
                <div class="form-group">
                    <label class="control-label col-xs-3">Имя и фалимия</label>
                    <div class="col-xs-9">
                        <input type="text" required class="form-control" name="name" placeholder="Введите Ваши имя и фамилию">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Контактний телефон</label>
                    <div class="col-xs-9">
                        <input type="text" maxlength="10" required class="form-control" name="phone" placeholder="Введите Ваш номер телефона">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3"> E-mail</label>
                    <div class="col-xs-9">
                        <input type="email" id="email" class="form-control" name = "email" required pattern="\S+@[a-z]+.[a-z]+" placeholder="Введите Ваш email">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-xs-3">Тур</label>
                    <div class="col-xs-9" style="font-size: 15px;">
                        <select name="tour">
                            <option value="Бразилія">Бразилія</option>
                            <option value="Argentine">Аргентина</option>
                            <option value="USA">Америка</option>
                            <option value="Costa Rik">Коста Ріка</option>
                            <option value="Spain">Іспанія</option>

                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-offset-3 col-xs-10">
                        </br><input type="submit" class="btn btn-success" value="Сделать заказ">
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

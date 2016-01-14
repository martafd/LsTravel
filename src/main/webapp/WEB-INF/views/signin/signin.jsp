<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>
  <title>Home</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <form class="form-signin" action="/signin" method="post">
                <fieldset>
                    <h2 class="form-signin-heading">Пожалуйста ввойдите</h2>
                    <%--<div th:if="${param.error}" class="alert alert-error">
                        Invalid username and password.
                    </div>
                    <div th:if="${param.logout}" class="alert alert-success">
                        You have been logged out.
                    </div>--%>
                    <label for="email" class="sr-only">Email</label>
                    <input type="email" <%--pattern="\S+@[a-z]+.[a-z]+" --%>id="email" class="form-control" name = "email" placeholder="Email">
                    <label for="password" class="sr-only">Пароль</label>
                    <input type="password" id="password" class="form-control" name = "password" placeholder="Пароль" >
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Вход</button>
                    <h3>Еще не зарегестрированы ?</h3>
                    <a href="/signup" class="btn btn-lg btn-primary btn-block" >Зарегестрироваться</a>
                </fieldset>
            </form>
        </div>
    </div>
</div>
</body>
</html>
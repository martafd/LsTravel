<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <title></title>
</head>
<body>
<div class="container">
    <div class="constructor">
        <div class="jumbotron">
            <div class="row">
                <div class="col-md-12">
                    <div class="error-template">
                        <h1>
                            Упс!</h1>
                        <h2>
                            404 Not Found</h2>
                        <div class="error-details">
                            Извините, произошла ошибка. Запрошенная Вами страница не найдена !
                        </div>
                        <div class="error-actions">
                            <a href="/" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>На главную </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>

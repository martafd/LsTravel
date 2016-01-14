<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <title></title>
</head>
<body>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="col-lg-12">
      <div class="centering text-center error-container">
        <div class="text-center">
          <h2 class="without-margin">Не беспокойтесь.Ето всего лишь <span class="text-warning">403</span> ошибка.</h2>
          <h4 class="text-warning">Нету доступа.</h4>
        </div>
        <div class="text-center">
          <h3><small>Выберите опцию ниже</small></h3>
        </div>
        <hr>
        <div class="error-actions">
          <a href="/" class="btn btn-primary btn-lg"><span class="glyphicon glyphicon-home"></span>На </a>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>

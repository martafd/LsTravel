<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dav1nci
  Date: 06.11.15
  Time: 1:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>
    <title></title>
</head>
<body>
<div class="container">
  <div class="constructor">
    <div class="alert alert-success">
      <h2>Добавить новую статью</h2>
      <form class="form-horizontal" action="/add" method="post">
        <div class="form-group">
          <label class="control-label col-xs-3">Тема</label>
          <div class="col-xs-9">
            <input type="text" class="form-control" max="100" min="10" name="title" placeholder="Добавить тему статьи">
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-xs-3">Контент</label>
          <div class="col-xs-9">
            <input type="text" class="form-control" min="100" name="body" placeholder="Добавить контент статьи">
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-9">
            <input type="submit" class="btn btn-primary" value="Добавить статью ">
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>

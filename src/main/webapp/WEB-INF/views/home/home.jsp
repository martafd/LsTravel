<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/style11.css" />" type="text/css" rel="stylesheet">
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>
    <%--<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>--%>
    <script src="<c:url value="/resources/js/slider.js" />" type="text/javascript"></script>
    <title>Home</title>
</head>
<body>
<div>
    <jsp:include page="../fragments/header.jsp"/>
</div>
<div class="container">
    <div class="constructor">

        <div class = "wrapper">
            <div id = "slider">
                <a href="/rules">
                    <img href="/rules" Id = "1" src = "../../resources/images/2.jpg">
                    <img href="/rules" Id = "2" src = "../../resources/images/22.jpg">
                    <img href="/rules" Id = "3" src = "../../resources/images/222.png">
                    <img href="/rules" Id = "4" src = "../../resources/images/2222.jpg">
                    <img href="/rules" Id = "5" src = "../../resources/images/22222.jpg">
                    <img href="/rules" Id = "6" src = "../../resources/images/222222.jpg">
                </a>
                <%--<a href="/rules"><img href="/rules" Id = "2" src = "../../resources/images/22.jpg"></a>
                <a href="/rules"><img href="/rules" Id = "3" src = "../../resources/images/222.jpg"></a>
                <a href="/rules"><img href="/rules" Id = "4" src = "../../resources/images/2222.jpg"></a>
                <a href="/rules"><img href="/rules" Id = "5" src = "../../resources/images/22222.jpg"></a>
                <a href="/rules"><img href="/rules" Id = "6" src = "../../resources/images/222222.jpg"></a>--%>
            </div>
            <a href = "#" class = "left" onclick="prev(); return false;">Previous</a>
            <a href = "#" class = "right" onclick="next(); return false;"  >Next</a>
        </div>




      <%--  </br><img src="../../resources/images/2.jpg" height="250" width="400" class ="leftimg">--%>

        <c:forEach items="${content}" var="row">
                    <p>${row.content}</p>
                </c:forEach>

    </div>
</div>
<div>
    <jsp:include page="../fragments/footer.jsp"/>
</div>
</body>
</html>

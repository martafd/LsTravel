<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="<c:url value="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <script src="<c:url value="/resources/js/jquery-2.1.4.js" />" type="text/javascript"></script>


    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    &lt;%&ndash;<script type="text/javascript" src="папка с js/jquery.min.js"></script>&ndash;%&gt;
    <link type="text/css" rel="stylesheet" href="../../resources/css/style.css"/>
  --%>  <title>FEED</title>
</head>

<body>
<div>
    <jsp:include page="../fragments/header.jsp"/>
</div>
<div class="container">
    <div class="constructor">
        <div class="container">

            <c:forEach items="${feeds}" var="feed">
                <div class="row">
                    <div class="col-md-3">
                        <h4>${feed.title}</h4>
                        <p>${feed.link}</p>
                        <p>${feed.date}</p>
                    </div>
                    <div class="col-md-7 col-border">
                        <p>${feed.description}</p>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>
</div>

<div>
    <jsp:include page="../fragments/footer.jsp"/>
</div>

</body>
</html>

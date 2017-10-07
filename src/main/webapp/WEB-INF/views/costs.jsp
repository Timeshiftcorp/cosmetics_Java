<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Магазин Косметики </title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">


    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script>
        function add() {
            document.getElementById("buyer-add").style="";
            document.getElementById("table1").style = "display:none";

        }
    </script>
</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>




<div class="container addcontainer">



    <table class="table" id="table1">
        <thead>
        <tr>
            <th>Дата</th>
            <th>Название</th>
            <th>Сумма</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${costs}" var="cd">
            <tr>
                <td>${cd.date}</td>
                <td>${cd.name}</td>
                <td>${cd.summ}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
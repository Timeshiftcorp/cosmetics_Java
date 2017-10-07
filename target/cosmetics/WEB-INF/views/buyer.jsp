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
            <th>ФИО</th>
            <th>Дисконт</th>
            <th>Пол</th>
            <th>Дата рождения</th>
            <th>Адрес</th>
            <th>Сумма</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${buyers}" var="buy">
            <tr>
                <td>${buy.fio}</td>
                <td>${buy.discount}</td>
                <td>${buy.sex}</td>
                <td>${buy.dateBirth}</td>
                <td>${buy.addr}</td>
                <td>${buy.summDiscount}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <input type="button" onclick="add()" value="Добавить">
    <div id="buyer-add" style="display: none">

        <form:form method="POST" modelAttribute="buyer" class="form-signin">
            <h2 class="form-signin-heading">Регистрация</h2>
            <spring:bind path="fio">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="fio" class="form-control" placeholder="ФИО"
                                autofocus="true"></form:input>
                    <form:errors path="fio"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="discount">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="discount" class="form-control" placeholder="Дисконт"></form:input>
                    <form:errors path="discount"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="sex">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="sex" class="form-control"
                                placeholder="пол"></form:input>
                    <form:errors path="sex"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="dateBirth">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="dateBirth" class="form-control"
                                placeholder="дата рождения"></form:input>
                    <form:errors path="dateBirth"></form:errors>
                </div>
            </spring:bind>


            <spring:bind path="addr">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="addr" class="form-control"
                                placeholder="Адрес"></form:input>
                    <form:errors path="addr"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="summDiscount">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="summDiscount" class="form-control"
                                placeholder="сумма накопления"></form:input>
                    <form:errors path="summDiscount"></form:errors>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>
    </div>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
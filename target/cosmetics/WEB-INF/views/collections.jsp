<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ru">
<head>
    <sec:csrfMetaTags/>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf_parameter" content="_csrf" />
    <meta name="_csrf_header" content="X-CSRF-TOKEN" />
    <meta name="_csrf" content="e62835df-f1a0-49ea-bce7-bf96f998119c" />
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
    <script>
        function getdata() {
            var img;
            var files = document.getElementById("input").files;
            if (files && files[0]) {

                var FR = new FileReader();

                FR.addEventListener("load", function(e) {
                    img = e.target.result;
                    document.getElementById("imagem").value = img;
                });

                FR.readAsDataURL(files[0]);
            }
            }

    </script>
</head>

<body>

<div class="container addcontainer">
<jsp:include page="menu.jsp"></jsp:include>
    <table class="table" id="table1">
        <thead>
        <tr>
            <th>Дата поставка</th>
            <th>Дата получиения</th>
            <th>Описание</th>
            <th>Представительство</th>
            <th>Магазин</th>
            <th>Тип косметики</th>
            <th>Изображение</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${collections}" var="col">
            <tr>
                <td>${col.datePost}</td>
                <td>${col.dateGet}</td>
                <td>${col.description}</td>
                <td>${col.agencyByIdAgency.name}</td>
                <td>${col.storeByIdStore.name}</td>
                <td>${col.typeCosmeticByIdTypecosmetic.name}</td>
                <td>  <img src="${col.Encode()}" /></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <input type="button" onclick="add()" value="Добавить">
    <div id="buyer-add" style="display: none">

        <form:form method="POST" modelAttribute="collection" class="form-signin" >
            <h2 class="form-signin-heading">Добавить в коллекцию</h2>
            <spring:bind path="dateGet">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="dateGet" class="form-control" placeholder="ФИО"
                                autofocus="true"></form:input>
                    <form:errors path="dateGet"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="datePost">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="date" path="datePost" class="form-control" placeholder="ФИО"
                                autofocus="true"></form:input>
                    <form:errors path="datePost"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="description">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="description" class="form-control" placeholder="ФИО"
                                autofocus="true"></form:input>
                    <form:errors path="description"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="typeCosmeticByIdTypecosmetic">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:select type="text" path="typeCosmeticByIdTypecosmetic" class="form-control" placeholder="Дисконт"></form:select>
                    <form:errors path="typeCosmeticByIdTypecosmetic"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="storeByIdStore">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:select type="text" path="storeByIdStore" class="form-control"
                                placeholder="пол"></form:select>
                    <form:errors path="storeByIdStore"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="agencyByIdAgency">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:select type="agencyByIdAgency" path="agencyByIdAgency" class="form-control"
                                placeholder="дата рождения"></form:select>
                    <form:errors path="agencyByIdAgency"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="image">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="hidden" id="imagem"   path="image" class="form-control"
                                placeholder="Адрес"></form:input>
                    <form:errors path="image"></form:errors>
                </div>
            </spring:bind>
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <input id="input"  onchange="getdata()" name="files[]" type="file"class="form-control">
                                </input>
                </div>

                  <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>
    </div>
</div>
<!-- /container -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
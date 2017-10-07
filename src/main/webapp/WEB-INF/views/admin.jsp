<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <sec:csrfMetaTags/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf_parameter" content="_csrf" />
    <meta name="_csrf_header" content="X-CSRF-TOKEN" />
    <meta name="_csrf" content="e62835df-f1a0-49ea-bce7-bf96f998119c" />

    <title>Admin</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <script>
        function getdata() {
            var header = "X-CSRF-TOKEN";
            var token = document.getElementById("csrf").value;
            var img;
            var files = document.getElementById("input").files;
            if (files && files[0]) {

                var FR = new FileReader();

                FR.addEventListener("load", function(e) {
                  img = e.target.result;
                    var name = document.getElementById("name").value;
                    var count = document.getElementById("count").value;
                    var price = document.getElementById("price").value;
                    var description = document.getElementById("description").value;
                    $.ajax({
                        type: 'post',
                        url: 'admin/save',

                        data: {'Name': name, 'img': img, 'count': count, 'description': description, 'price': price},
                        beforeSend: function(xhr){
                            xhr.setRequestHeader(header, token);
                        },
                        success: function (data) {
                            $("#commentRow").html(data);
                            alert("Картина загружена!");
                        }
                    });
                });

                FR.readAsDataURL(files[0]);
            }
        }
    </script>

    <script>
        function test() {

            var header = "X-CSRF-TOKEN";
            var token = document.getElementById("csrf").value;

            $.ajax({
                url: '/admin/save',
                type: 'POST',
                beforeSend: function(xhr){
                    xhr.setRequestHeader(header, token);
                },
                success: function(data) {
                    console.log(data);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    console.log(xhr.status + ": " + thrownError);
                }
            });

        }
    </script>

</head>

<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="post" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <h2>Admin Page ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>
    </c:if>
</div>


    <div class="container addcontainer">
    <table class="table">
        <thead>
        <tr>
            <th>
                Название
            </th>
            <th>
                Количество
            </th>
            <th>
                Описание
            </th>
            <th>
                Изображение
            </th>
            <th>
                Цена
            </th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>
                <input id="name" type="text">
            </td>
            <td>
                <input  id="count" type="number">
            </td>
            <td>
                <textarea id="description" name="Text1" cols="40" rows="5"></textarea>
            </td>
            <td>
                <div id="img">

                </div>

                <input id="input" onchange="readFile()" type="file" multiple="multiple" name="files[]" accept="image/jpeg,image/png,image/gif" required="required" title="Необходимо выбрать минимум один файл" />

            </td>
            <td>
                <input type="number" id="price" value="0">
            </td>
        </tr>
        <input type="button" onclick="getdata()" value="Добавить">
        </tbody>
    </table>
    <input id="csrf" type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <div id="result"></div>
 <script src="${contextPath}/resources/js/myscripts.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>

</body>
</html>
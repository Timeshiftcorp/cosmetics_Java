<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <script>
        function buy(id, count) {
            var header = "X-CSRF-TOKEN";
            var token = document.getElementById("csrf").value;

            $.ajax({
                type: 'post',
                url: 'welcome/buy',
                data: {'id': id, 'count': count},
                beforeSend: function (xhr) {
                    xhr.setRequestHeader(header, token);
                },
                success: function (data) {
                    $("#commentRow").html(data);
                    document.location.href = 'welcome';
                },
                fail: function (data) {
                    alert(" загружена!");
                }
            });

        }

        function del(id){
            var header = "X-CSRF-TOKEN";
            var token = document.getElementById("csrf").value;

            $.ajax({
                type: 'post',
                url: 'welcome/delete',
                data: {'id': id, },
                beforeSend: function (xhr) {
                    xhr.setRequestHeader(header, token);
                },
                success: function (data) {
                    $("#commentRow").html(data);
                    document.location.href = 'welcome';
                },
                fail: function (data) {
                    alert(" загружена!");
                }
            });

        }
    </script>


</head>
<body>
<jsp:include page="menu.jsp"></jsp:include>
<div class="container addcontainer">

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
            <h2>Welcome ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
            </h2>
    </c:if>
    <ul class="products clearfix">
        <c:forEach items="${cosmetic}" var="cm">
        <li class="product-wrapper">
            <a  class="product">
                <div class="product-main">
                    <div class="product-photo">
                            <%--<img src="data:image/jpeg;base64,${pict.Encode()}" />--%>
                        <%--<img src="${cosmetic.image}"/>--%>
                    </div>
                    <div class="product-text">
                        <h2 class="product-name">${cm.name}</h2>
                        <p>${cm.price}</p>
                    </div>
                </div>

</a>

</li>
</c:forEach>
</ul>



</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>


</body>
</html>
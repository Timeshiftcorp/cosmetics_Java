<%--
  Created by IntelliJ IDEA.
  User: times
  Date: 07.10.2017
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page contentType="text/html" pageEncoding="utf-8" language="java" %>

<div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="/">Косметика</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/buyer" class="">Покупатели</a></li>
                        <li class=" dropdown">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Отчеты <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class=" dropdown">
                                    <a  href="/agencycost" onclick=" document.location.href = '/agencycost';" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Расходы</a>
                                </li>
                                <li><a href="/services">Услуги</a></li>
                                <li><a href="/costs">Расценки</a></li>
                                <li><a href="/store">Магазины</a></li>
                                <li><a href="/report">Расходы Клиентов</a></li>
                            </ul>
                        </li>
                        <li><a href="/types">Типы</a></li>
                        <li><a href="/card">Дисконтные карты</a></li>
                        <li><a href="/costs">Расценки</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">

                        <li class=""> <a  href="#" onclick="document.forms['logoutForm'].submit()">Выйти</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<c:if test="${pageContext.request.userPrincipal.name != null}">
    <form id="logoutForm" method="POST" action="${contextPath}/logout">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>

    </h2>
</c:if>


<%--<a href="/buyer">Покупатели</a>--%>
<%--<a href="/collection">Коллекции</a>--%>
<%--<a href="/admin">Админ</a>--%>
<%--<a href="/types">Типы</a>--%>


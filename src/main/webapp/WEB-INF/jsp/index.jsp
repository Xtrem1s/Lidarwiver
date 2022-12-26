<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">

  <style>
    body {
      background: url("http://api.innogest.ru/sites/default/files/news/images_body/08_2.jpg");
    }
  </style>
</head>
<div class="right-menu">
  <h3>${pageContext.request.userPrincipal.name}</h3>
  <sec:authorize access="!isAuthenticated()">
    <h4><a href="/login" style="color: aliceblue">Войти</a></h4>
    <h4><a href="/registration" style="color: aliceblue">Зарегистрироваться</a></h4>
  </sec:authorize>
</div>
<div class="right-menu-exit">
  <sec:authorize access="isAuthenticated()">
    <h4><a href="/logout" style="color: aliceblue">Выйти</a></h4>
  </sec:authorize>
</div>
<div class="left-menu">

  <h4><a href="/news" style="color: aliceblue">Новости (только пользователь)</a></h4>
  <h4><a href="/admin" style="color: aliceblue">Пользователи (только админ)</a></h4>
</div>
</body>
</html>
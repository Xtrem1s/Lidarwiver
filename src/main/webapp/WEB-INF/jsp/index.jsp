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
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
  <style>
    body {
      background: url("https://pcvector.net/uploads/posts/2018-02/1517572511_bg-svg-gradient-min.png");
      background-size: 100%;
    }
  </style>
  <div class="navbar">
    <a href="#home">Главная</a>
    <div class="dropdown">
      <button class="dropbtn">Действия

        <i class="fa fa-caret-down"></i>
      </button>
      <div class="dropdown-content">
        <h4><a href="/news" style="color: black">Changelog</a></h4>
        <h4><a href="/admin" style="color: black">Пользователи (только админ)</a></h4>
      </div>
    </div>
    <div class="right-menu">
      <h3>${pageContext.request.userPrincipal.name}</h3>
      <sec:authorize access="!isAuthenticated()">
        <div class="login">
          <h4><a href="/login" style="color: aliceblue">Войти</a></h4>
        </div>
        <div class="registr">
          <h4><a href="/registration" style="color: aliceblue">Зарегистрироваться</a></h4>
        </div>
        <div class="out">
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
        <h4><a href="/logout" style="color: aliceblue">Выйти</a></h4>
      </sec:authorize>
        </div>
    </div>

  </div>
</head>
<div class="right-menu-exit">

</div>
<div class="pic"  >
  <p><img class="pics1" src="https://sun9-27.userapi.com/impg/WH29-ToR3iPcoIgq0X-rqMW8PY6RBgMuiUTrQA/yR95UL3D91g.jpg?size=605x352&quality=96&sign=18e664969b86337bb4a9923f0acdb282&type=album " alt="Письма мастера дзен"></p>
</div>
</body>
</html>
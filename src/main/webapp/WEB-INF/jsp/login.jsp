<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Log in with your account</title>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap" rel="stylesheet">
  <style>
    body {
      background: url("https://pcvector.net/uploads/posts/2018-02/1517572511_bg-svg-gradient-min.png");
      background-size: 100%;
    }
  </style>
</head>

<body>
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<div class="navbar">
  <div>
    <a href="/">Главная</a>
  </div>
</div>
<div class="login">
  <form method="POST" action="/login">
    <h2>Вход в систему</h2>
    <div class="user-name">
      <input name="username" type="text" placeholder="Username"
             autofocus="true"/>
    </div>
    <div class="password">
      <input name="password" type="password" placeholder="Password"/>
    </div>
    <div class="login1">
      <button type="submit"> Войти </button>
    </div>
      <h4><a href="/registration">Зарегистрироваться</a></h4>
  </form>
</div>
</body>
</html>

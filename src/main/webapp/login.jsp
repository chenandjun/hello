<%--
  Created by IntelliJ IDEA.
  User: 15201
  Date: 2018/3/28
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="static/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="static/mycss/public.css" media="all" />
    <style>
        html,
        body{
            height: 100%;
        }
    </style>

</head>
<body class="loginBody">
<form class="layui-form" action="/login.do" method="post">
    <div class="login_face"></div>
    <div class="layui-form-item input-item">
        <label for="userName">用户名</label>
        <input name="user_name" type="text" placeholder="请输入用户名" id="userName" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item">
        <label for="password">密码</label>
        <input name="user_pwd" type="password" placeholder="请输入密码" id="password" class="layui-input" lay-verify="required">
    </div>
    <div class="layui-form-item input-item" id="imgCode">
        <label for="code">验证码</label>
        <input type="text" placeholder="请输入验证码" id="code" class="layui-input">
        <img src="static/image/code.jpg">
    </div>
    <div class="layui-form-item">
        <button type="submit" class="layui-btn layui-block" lay-filter="login" lay-submit>登录</button>
    </div>
</form>
    <script type="text/javascript" src="static/layui/layui.js"></script>
    <script type="text/javascript" src="static/myjs/login/login.js"></script>
</body>
</html>

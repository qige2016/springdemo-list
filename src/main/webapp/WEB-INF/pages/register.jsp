<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/20
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet">

    <link href="//cdn.bootcss.com/iCheck/1.0.2/skins/square/green.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/animate.css/3.5.2/animate.min.css" rel="stylesheet">
    <link href="css/style.min862f.css?v=4.1.0" rel="stylesheet">
    <script>if(window.top !== window.self){ window.top.location = window.location;}</script>

</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

            <h1 class="logo-name">Qi</h1>

        </div>
        <h3>欢迎注册</h3>
        <p>创建一个新账户</p>
        <form:form class="m-t" action="/registerP" method="post" commandName="user" role="form">
            <div class="form-group">
                <input type="text" class="form-control" name="username" placeholder="请输入用户名" >
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" id="password1" placeholder="请输入密码" >
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password2" placeholder="请再次输入您的密码" >
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="请输入邮箱" >
            </div>
            <div class="form-group text-left">
                <div class="checkbox i-checks">
                    <label>
                        <input type="checkbox" class="checkbox" id="agree" name="agree"> 我同意注册</label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">注 册</button>

            <p class="text-muted text-center"><small>已经有账户了？</small><a href="login">点此登录</a>
            </p>

        </form:form>
    </div>
</div>
<script src="//cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/iCheck/1.0.2/icheck.min.js"></script>
<script>$(document).ready(function(){$(".i-checks").iCheck({checkboxClass:"icheckbox_square-green",radioClass:"iradio_square-green"})});</script>
<script src="//cdn.bootcss.com/jquery-validate/1.14.0/jquery.validate.min.js"></script>
<script src="/js/additional-methods-common.js" ></script>
<%--<script src="//cdn.bootcss.com/iCheck/1.0.2/icheck.min.js"></script>--%>
<script src="/js/blog-validate.js" type="text/javascript" charset="utf-8"></script>
<%--<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>--%>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>session对象应用实例3--登录页面</title>
</head>
<body>
<%
session.setAttribute("customer", "客户");%>
<hr>
<form action="shop.jsp" method="get">
客户名：<input type="text" name="LoginName">
<input type="submit" value="登录">







</form>
</body>
</html>
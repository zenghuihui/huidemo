<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<%
//获取保存在session中的用户名
String name=(String)session.getAttribute("userName");%>
你好<%=name %>欢迎你访问<br>
<a href="exit.jsp">[退出系统]</a>
</body>
</html>
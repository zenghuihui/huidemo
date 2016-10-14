<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>response 对象应用实例</title>
</head>
<body>
<hr>
<%
response.setBufferSize(10240);

%>
<%=response.getBufferSize()%>
<br>
<%
response.setCharacterEncoding("utf-8");
%>
<%=response.getCharacterEncoding() %>
<br>
网站友情链接：
<hr>
<form action="responseHandle.jsp" method="post">
<select name="link">
<option value="qhdxcbs" selected>清华大学出版社<option>
<option value="jyb" >中华人民共和国教育部<option>

</select>
<input type="submit" name="submit" value="确定">

</form>
<hr>
</body>
</html>
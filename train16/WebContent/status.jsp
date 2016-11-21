<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="train16.Status"%>
  <%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />

<title>Insert title here</title>
<style type="text/css">
.div1 {
	width: 400px;
	height: 300px;
	margin-top: 100px;
	margin-left: 300px;
	border: 2px solid gray;
}
</style>
</head>
<body style="background: url('img/1.gif')">
<div class="div1">
<jsp:useBean id="status" class="train16.Status" scope="session"/>
 </br>
 <label class="text-danger" style="font-size: 26px;align:center;" >这不是演习，这不是演习</label>
<form action="showInfo.jsp" method="post">
<%
String test=status.getZhuangTai().get(0);//取出问题
ArrayList<String> xuanXiang=status.getTiMu().get(test);//根据问题取出选项

out.println("<h4>"+test+"应该怎么回答！想清楚<h4>");

//显示出所有选项
for(int i=0;i<4;i++){
	String neiRong=xuanXiang.get(i);
	String num= String.valueOf(i);
	out.print("<p><input type='radio' name='phone' value='"+num+"' >"+neiRong+"</input></p>");
	
}

%>
<button class="btn btn-default">提交</button>
</form>
</div>
</body>
</html>
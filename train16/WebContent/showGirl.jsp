<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
     import="train16.GirdFriend"
     %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />

<title>展示女朋友页面</title>
<style type="text/css">
.div1 {
	width: 340px;
	height: 360px;
	margin-top: 100px;
	margin-left: 300px;
	border: 2px solid gray;
}
</style>
<!-- 初始化女朋友 -->
<jsp:useBean id="myGirlFriend" class="train16.GirdFriend" scope="session"/>

<!-- 一次填入，再无烦恼 -->
<jsp:setProperty  property="*" name="myGirlFriend"/>

</head>
<body style="background: url('img/1.gif')">
<div align="center" class="div1">
   
<table class="table table-hover">
			<tr>
				<td colspan="2" class="text-info" style="font-size: 26px;"
					align="center">女友信息填写成功：</td>

			</tr>
			<tr>
				<td class="text-info" style="font-size: 18px;">女朋友的颜值：</td>
				<td class="text-danger" style="font-size: 22px;"><%=request.getParameter("face")%></td>
			</tr>
			<tr>
				<td class="text-info" style="font-size: 18px;">女朋友的体重：</td>
				<td class="text-danger" style="font-size: 22px;"><%=request.getParameter("weight")%></td>
			</tr>
			<br />
			<tr>
				<td class="text-info" style="font-size: 18px;">女朋友的身高：</td>
				<td class="text-danger" style="font-size: 22px;"><%=request.getParameter("tall")%></td>
			</tr>
			<tr>
				<td class="text-info" style="font-size: 18px;">女朋友的怒值：</td>
				<td class="text-danger" style="font-size: 22px;"><%=request.getParameter("shengQi")%></td>
			</tr>
			<tr>
				<td class="text-info" style="font-size: 18px;">女朋友的爱值：</td>
				<td class="text-danger" style="font-size: 22px;"><%=request.getParameter("love")%></td>
			</tr>
			<tr>
				<td colspan="2" style="font-size: 26px;"
					align="center"><a href="status.jsp" class="text-danger" >前方高能,开始测试！</a></td>

			</tr>
		</table>


</div>




</body>
</html>
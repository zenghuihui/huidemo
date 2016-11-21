<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="train16.GirdFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />
<head>
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
<div class="div1" align="center">
<%
    GirdFriend gf = (GirdFriend)session.getAttribute("myGirlFriend");//从session中获得
	String phone = request.getParameter("phone");//从刚刚的页面中得到选项内容
	
	int shengQi = gf.getShengqi();//获得女友现在的生气值
	int love = gf.getLove();//获得女友现在的爱值
	
	if(phone.equals("0")){
		shengQi = shengQi+10;
	}else if(phone.equals("1")){
		shengQi = shengQi+30;
	}else if(phone.equals("2")){
		love =love+20;
	}else{
		love = love+10;
		shengQi=shengQi +10;
	}
	
	gf.setShengqi(shengQi);
	gf.setLove(love);
	
	if(gf.getShengqi()>20){
		out.print("<h2>恭喜你，你已经狗带了</h2>");
	}else{
		out.print("<h3>少年你要小心，女友的怒气值已到达"+gf.getShengqi()+"</h3>");
		
		if(gf.getLove()>30){
			out.print("<h2>哎呦不错哦</h2>");
		}
		out.print("<p><a href='status.jsp'>继续测试！</a></p>");
	}
	
	if(gf.getLove()>100){
		out.print("<h2>恭喜你，可以进入殿堂</h2>");
	}
%>
</div>
</body>
</html>
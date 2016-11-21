<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="./bootstrap/dist/css/bootstrap.css" />

<title>Insert title here</title>
<style type="text/css">
.div1 {
	width: 340px;
	height: 310px;
	margin-top: 100px;
	margin-left: 300px;
	border: 2px solid gray;
}
</style>
</head>
<body style="background: url('img/1.gif')">
<div align="center" class="div1">
<h3>
女朋友信息
</h3>
 </br>
<form action="showGirl.jsp" method="post" class="form-inline" >
    <div class="form-group">
    <label >颜&nbsp;&nbsp; 值：</label>
    <input type="text" class="form-control" name="face" >
    </div>
     <div class="form-group">
    <label >体&nbsp;&nbsp; 重：</label>
    <input type="text" class="form-control" name="weight" >
    </div>
   <div class="form-group">
    <label >身&nbsp;&nbsp; 高：</label>
    <input type="text" class="form-control" name="tall" >
    </div>
	 <div class="form-group">
    <label >愤怒值：</label>
    <input type="text" class="form-control" name="shengQi" >
    </div>
	 <div class="form-group">
    <label >心动值：</label>
    <input type="text" class="form-control" name="love" >
    </div>
    </br>
    </br>
	 <button type="submit" class="btn btn-default">提交</button>
</form>
</div>

</body>
</html>
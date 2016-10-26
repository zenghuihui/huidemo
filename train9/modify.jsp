<%@ page language="java" contentType="text/html; charset=utf-8"
    import="java.sql.*"%>
 <%@ page import="java.sql.DriverManager" %> 
 <%request.setCharacterEncoding("UTF-8");
   response.setCharacterEncoding("utf-8");
   response.setContentType("text/html;charset=utf-8");
 %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=software";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
Statement stmt=conn.createStatement();

String id=request.getParameter("id");
String sql="select * from ware where id="+id;
ResultSet rs=stmt.executeQuery(sql);
String name="";
int age=0;
String major="";
while(rs.next()){
	name=rs.getString("name");
	age=rs.getInt("age");
	major=rs.getString("major");
}

%>
强势插入代码
 <form action="updateStudent.jsp" method="post">
 <p> 学号：<input name="id" type="hidden" value='<%=id %>'/></p>
  <p> 姓名：<input name="name" type="text" value='<%=name %>'/></p>
   <p> 年龄：<input name="age" type="text" value='<%=age %>'/></p>
    <p> 专业：<input name="major" type="text" value='<%=major %>'/></p>
    <button type="submit">提交</button>
 </form>
</body>
</html>
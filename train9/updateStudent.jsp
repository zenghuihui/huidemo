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
String sql = "update ware set name=?,age=?,major=?where id=?";
PreparedStatement st = conn.prepareStatement(sql);

String id = request.getParameter("id");
String name = request.getParameter("name");
String age = request.getParameter("age");
String major = request.getParameter("major");


st.setString(1, name);
st.setInt(2, Integer.parseInt(age));
st.setString(3, major);
st.setInt(4, Integer.parseInt(id));

int result=st.executeUpdate();
st.close();

conn.close();

%>数据修改成功
<%
response.sendRedirect("connect.jsp");
session.setAttribute("info", "数据修改成功");%>
</body>
</html>
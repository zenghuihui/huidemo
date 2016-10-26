<%@page import="javax.swing.text.NumberFormatter"%>
<%@page import="java.text.spi.NumberFormatProvider"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="com.sun.xml.internal.ws.resources.SenderMessages"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		if (id == null || id.equals("")) {
			response.sendRedirect("insert.jsp");
		} else {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=software";
			Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");

			String sql = "insert into ware values(?,?,?,?)";
			PreparedStatement st = conn.prepareStatement(sql);

			String name = request.getParameter("name");
			String age = request.getParameter("age");
			String major = request.getParameter("major");
			int idTemp = 0;
			idTemp = Integer.parseInt(id);

			st.setInt(1, idTemp);
			st.setString(2, name);
			st.setInt(3, Integer.parseInt(age));
			st.setString(4, major);

			st.executeUpdate();

			System.out.println(toString());
			st.close();

			conn.close();
		}
	%>提交成功
</body>
</html>
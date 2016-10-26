<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.io.*"%>
<html>
<body>

<table>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=software";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from ware");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td>"+rs.getInt("id")+"</td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("major")+"</td>");
    out.println("</tr>");
  }

  
 
  
  rs.close();
  stmt.close();
  conn.close();
  %> 
  <%=session.getAttribute("info") %> 
</table>
</body>
</html>

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

  
  
  String sql = "select * from goods where min_name = ? and age = ?";  // ���в���
  PreparedStatement st = conn.prepareStatement(sql);
  st.setString(1, "��ͯ"); // ������ֵ
  st.setInt(2, 22);
  System.out.println(st.toString()); //com.mysql.jdbc.JDBC4PreparedStatement@d704f0: select * from goods where min_name = '��ͯ'
  
  rs.close();
  stmt.close();
  conn.close();
  %>  
</table>
</body>
</html>

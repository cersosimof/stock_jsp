<%@page import="java.sql.*"%>

<%
	try {
	Connection cnx=null;
    Statement sta=null;
    ResultSet rs=null;
    
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    cnx = DriverManager.getConnection("jdbc:mysql://localhost/control_stock?user=root&password=&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
    out.println ("database successfully opened.");
    
    sta=cnx.createStatement();
    rs=sta.executeQuery("SELECT * FROM articulos");
    
    while(rs.next()){
    %>
    <p><%=rs.getString("categoria")%></p>
    <p><%=rs.getString("modelo")%></p>
    <%
    
  }
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

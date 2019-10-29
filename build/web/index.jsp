<%@ page import="java.sql.*"%>
<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<title>JDBC Connection example</title>
</head>

<body>
<%@include file="navbar.jsp" %>
<%
  try {
    java.sql.Connection cnx;
    Statement sta=null;
    ResultSet rs=null;
    
    Class.forName("com.mysql.jdbc.Driver");
    cnx = DriverManager.getConnection("jdbc:mysql://localhost/control_stock?user=root&password=&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
    out.println ("database successfully opened.");
    
    sta=cnx.createStatement();
    rs=sta.executeQuery("SELECT * FROM articulos");
    
    while(rs.next()){
    %>
    <p><%=rs.getString("categoria")%></p>
    <%
    
  }
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>

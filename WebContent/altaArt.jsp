<%-- 
    Document   : altaArt.jsp
    Created on : 29/10/2019, 19:07:44
    Author     : cerso
    
      try {
    java.sql.Connection cnx=null;
    Statement sta=null;
    ResultSet rs=null;
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    cnx = DriverManager.getConnection("jdbc:mysql://localhost/control_stock?user=root&password=&useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC");
    out.println ("database successfully opened.");
    
    sta=cnx.createStatement();
    int i=sta.executeUpdate("INSERT INTO articulos (id_articulo, categoria, marca, modelo, notas, stockInicial, alerta) VALUES (NULL, '$categoria', '$marca', '$modelo', '$notas', '$stockInicial', '$alerta')";
);
        out.println (i);
    

  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
    
    
--%>

<%@ page import="java.sql.*"%>


<%
    String cat=request.getParameter("categoria");
    String mar=request.getParameter("marca");
    String modelo=request.getParameter("modelo");
    String notas=request.getParameter("notas");
    String stock=request.getParameter("stock");
    String alerta=request.getParameter("alerta");
    
    out.println(cat);
    
    


%>

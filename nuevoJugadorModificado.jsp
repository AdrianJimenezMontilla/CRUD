<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"  crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"  crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>
    <link rel="stylesheet" href="crud.css">

    <title>NBA Adrian Jimenez Montilla</title>
  </head>
  <body id="correcto"><font size="16">
    <% //Conexion Base de datos
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudnba","root", "");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      // Se compone la sentencia SQL en actualizacion a traves de los parametros recibidos en el formulario
      String actualizacion = "UPDATE jugadores SET "
                           + "NomJug='" + request.getParameter("NomJug")
                           + "', EdaJug=" + Integer.valueOf(request.getParameter("EdaJug"))
                           + ", PosJug='" + request.getParameter("PosJug")
                           + "', AltJug='" + Integer.valueOf(request.getParameter("AltJug"))
                           + "', PesJug='" + Integer.valueOf(request.getParameter("PesJug"))
                           + "', CodEqui=" + Integer.valueOf(request.getParameter("CodEqui"))
                           + " WHERE CodJug=" + Integer.valueOf(request.getParameter("CodJug"));
      //Se ejecuta
      s.execute(actualizacion);
      out.println("Actualizacion realizada.");
      conexion.close();
    %>
    </font>
    <br>
    <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Inicio</button>
    <div id="nba22"></div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

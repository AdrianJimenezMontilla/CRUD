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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="crud.css">

    <title>NBA Adrian Jimenez Montilla</title>
  </head>
  <body id="modifica"> <!-- Contenedor -->
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-warning">
        <div class="panel-heading panel text-center">Modificar jugador</div>
          <form method="get" action="nuevoJugadorModificado.jsp">   <!-- Formulario que manda las modificaciones -->
            <div id="nba2"></div>
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Código de jugador:&nbsp;</label><input type="text" size="5" name="CodJug" value="<%= request.getParameter("CodJug") %>" readonly>
            </div>
            <div class="form-group">
              <label>&nbsp;&nbsp;Nombre:&nbsp;</label><input type="text" size="20" name="NomJug" value="<%= request.getParameter("NomJug") %>">
            </div>
            <div class="form-group">
              <label>&nbsp;&nbsp;Edad:&nbsp;</label><input type="text" size="10" name="EdaJug" value="<%= request.getParameter("EdaJug") %>">
            </div>
            <div class="form-group">
              <label>&nbsp;&nbsp;Posición:&nbsp;</label><input type="text" size="20" name="PosJug" value="<%= request.getParameter("PosJug") %>">
            </div>
            <div class="form-group">
              <label>&nbsp;&nbsp;Estatura (en cm):&nbsp;</label><input type="text" size="5" name="AltJug" value="<%= request.getParameter("AltJug") %>">
            </div>
             <div class="form-group">
              <label>&nbsp;&nbsp;Peso (en kg):&nbsp;</label><input type="text" size="5" name="PesJug" value="<%= request.getParameter("PesJug") %>">
            </div>
            <div class="form-group">
              <label>&nbsp;&nbsp;Equipo:&nbsp;</label><select name="CodEqui"><option value="<%= request.getParameter("CodEqui") %>"><% request.getParameter("NomEqui"); %></option>
                  
                  <% //Conexion a Base de datos
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudnba","root", "");
                  Statement s = conexion.createStatement();
                  //Ejecuta la consulta para guardarlo en listado
                  ResultSet listado = s.executeQuery ("SELECT CodEqui, NomEqui FROM equipo");
                  //Extraemos los registros con bucle While
                  while(listado.next()) {
                    
                    out.println("<option value=" + listado.getString("CodEqui") + ">" + listado.getString("NomEqui") + "</option>");  
                  } //Cierra while
                  
                  conexion.close();
                 %>
              
            </select>
            </div>
            <hr>
            &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
            <button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
          </form>

      </div>
                 <div class="text-center"><font color="red">&copy; Adrian Jimenez Montilla</font></div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
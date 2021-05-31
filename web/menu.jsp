<%-- 
    Document   : menu
    Created on : 10-may-2021, 9:32:01
    Author     : Julian
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <link href="Css/Estilos.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
       <nav>
        <ul>
            <li><a href="registrarUsuario.jsp" class="btn-bk">Registrar usuario</a></li>
            <li><a href="consultarVehiculo.jsp" class="btn-bk">Consultar vehiculo</a></li>
          </ul>
      </nav>
        <center>
            
            
        
        
        
        
        </center>
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesión">
            
        </form>
    </body>
</html>

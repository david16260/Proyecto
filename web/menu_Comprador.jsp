<%-- 
    Document   : menu_Comprador
    Created on : 1/06/2021, 09:16:56 AM
    Author     : David
--%>
<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Css/Estilos.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMPRADOR</title>
    </head>
    <body>
         <nav>
        <ul>
             <li><a href="registrarUsuario.jsp" class="btn-bk">Registrar usuario</a></li>
            <li><a href="registrarVehiculo.jsp" class="btn-bk">Registrar Vehiculo</a></li>
            <li><a href="actualizarVehiculo.jsp" class="btn-bk">Actualizar vehiculo</a></li>
            <li><a href="consultarVehiculo.jsp" class="btn-bk">Consultar vehiculo</a></li>
            <li><form method="post" action="Sesiones">
                    <input type="submit" value="Cerrar Sesión" class="btn-c">
             </form></li>
            <h1 class="bienvenido">Bienvenido:<%=usuario%></h1>
          </ul>
      </nav>
        <h1>COMPRADOR</h1>
    </body>
</html>

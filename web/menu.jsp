<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<script src="Validaciones.js" type="text/javascript"></script>
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
        
        <select onchange="redireccion(value)">
            <option>Seleccione Rol...</option>
            
        <%
        UsuarioVO usuVO = new UsuarioVO();
        ArrayList<UsuarioVO> listaRoles=(ArrayList<UsuarioVO>)buscarSesion.getAttribute("roles");
           for (int i = 0; i < listaRoles.size(); i++) {
                        usuVO = listaRoles.get(i);
           
        
        %>
        
        <option value="<%=usuVO.getRolTipo()%>"><%=usuVO.getRolTipo()%></option>
        
        <% }%>
        </select>   
        
       
        <form method="post" action="Sesiones">
            <input type="submit" value="Cerrar Sesión">
            
        </form>
    </body>
</html>

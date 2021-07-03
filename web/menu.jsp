<%@page import="java.util.ArrayList"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<script src="Validaciones.js" type="text/javascript"></script>
<!DOCTYPE html>

<html>
    <head>
       <link rel="stylesheet" href="Css/Estilos.css">
        <link rel="stylesheet" href="Css/sesiones.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
       <nav>
        <ul>
            <li><select onchange="redireccion(value)" class="btn-bk">
            <option>Seleccione Rol...</option>
            
        <%
        UsuarioVO usuVO = new UsuarioVO();
        ArrayList<UsuarioVO> listaRoles=(ArrayList<UsuarioVO>)buscarSesion.getAttribute("roles");
           for (int i = 0; i < listaRoles.size(); i++) {
                        usuVO = listaRoles.get(i);
           
        
        %>
        
        <option value="<%=usuVO.getRolTipo()%>"><%=usuVO.getRolTipo()%></option>
        
        <% }%>
                </select></li>   
            <li><form method="post" action="Sesiones">
                    <input type="submit" value="Cerrar Sesión" class="btn-c">
             </form></li>
            <h1 class="bienvenido">Bienvenido:<%=usuario%></h1>
          </ul>
      </nav>
        
    </body>
</html>

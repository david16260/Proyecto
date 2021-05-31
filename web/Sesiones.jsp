<%-- 
    Document   : Sesiones
    Created on : 31/05/2021, 09:08:27 AM
    Author     : David
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-cotrol", "no-cache,no-store,must-revalidate");
    response.setDateHeader("Expires", 0);
%>

<%
    HttpSession buscarSesion = (HttpSession)request.getSession();
    String usuario="";
    
    if (buscarSesion.getAttribute("datos") ==null){
    request.getRequestDispatcher("index.jsp").forward(request, response);
        
    
        }else{
        UsuarioVO usuVO = (UsuarioVO)buscarSesion.getAttribute("datos");
        usuario = usuVO.getUsulogin();
    
    }

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido: <%=usuario%></h1>
    </body>
</html>

<%-- 
    Document   : index
    Created on : 10-may-2021, 9:32:21
    Author     : Julian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/Login.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Iniciar Sesión</title>
    </head>
    <body>
    <center>
        <div class="login">
            <h1 class="text-center text prymary">iniciar Sesión</h1>
            <p class="text-center">Ingresa los datos con los que te has registrado para poder continuar</p>



            <form method="POST" action="Usuario">
                <table>
                    <tr>
                    <label for="usu">Usuaurio</label><br>
                    <input type="text" name="txtUsuario" placeholder="Usuario" id="usu"  ><br><br>
                    <label for="pass">Contraseña</label><br>
                    <input type="password" name="txtPassword" placeholder="Contraseña" id="pass" ><br><br>
                    </tr>
                </table>
                <button class="btn">Ingresar</button>
                <input type="hidden" value="3" name="opcion">
            </form>
        </div>
        <div>
            <% if (request.getAttribute("mensajeError") != null) {%>
            <div style="color: red;">
                ${mensajeError}
            </div>
            <%} else {%>
            <div style="color:green;">
                ${mensajeExito}
            </div>
            <%}%>
        </div>
    </center>
</body>
</html>

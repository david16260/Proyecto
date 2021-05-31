<%-- 
    Document   : actualizarVehiculo
    Created on : 18/05/2021, 08:29:55 AM
    Author     : David
--%>


<%@page import="ModeloVO.VehiculoVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ACTUALIZAR VEHICULO</title>
    </head>
    <body>
    <center>
        <h1>ACTUALIZAR VEHÍCULO</h1>

        <%            VehiculoVO vehVO = (VehiculoVO) request.getAttribute("vehiculo");
            if (vehVO != null) {

        %>

        <form method="post" action="Vehiculo">
            <table>
                <tr>
                    <th>
                        PLACA<br>
                        <input type="text" name="textPlaca" value="<%=vehVO.getVehPlaca()%>"><br><br>
                        DATOS<br>
                        <input type="text" name="textDatos" value="<%=vehVO.getDatId()%>"><br><br>
                        CATEGORÍA<br>
                        <input type="text" name="textCategoria" value="<%=vehVO.getCatId()%>"><br><br>
                        MODELO<br>
                        <input type="text" name="textModelo" value="<%=vehVO.getVehModelo()%>"><br><br>
                        MARCA<br>
                        <input type="text" name="textMarca" value="<%=vehVO.getVehMarca()%>"><br><br>
                        ESTADO<br>
                        <input type="text" name="textEstado" value="<%=vehVO.getVehEstado()%>"><br><br>
                        PRECIO<br>
                        <input type="text" name="textPrecio" value="<%=vehVO.getVehPrecio()%>"><br><br>

                    </th>
                </tr>
            </table>
            <button>Actualizar</button>
            <input type="hidden" value="2" name="opcion">      
        </form><br><br>

        <%}%>

        <a href="consultarVehiculo.jsp">Volver</a>
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
        </div><br><br>
    </center>

</body>
</html>

<%-- 
    Document   : consultarVehiculo
    Created on : 18/05/2021, 08:19:25 AM
    Author     : David
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.VehiculoDAO"%>
<%@page import="ModeloVO.VehiculoVO"%>
<%@include file="Sesiones.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehiculos</title>
    </head>
    <body>
    <center>
        <h1>Vehiculos</h1>
        <form method="POST" action="Vehiculo">
            <table>
                <tr>
                    <th>
                        PLACA
                        <input type="text" name="textPlaca">
                        <button>CONSULTAR</button>
                    </th>
                </tr>
            </table><br><br>
            <input type="hidden" value="3" name="opcion">
        </form><br><br>
        
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
        
        <form>
            
            <table border="1px">
                <tr>
                    <th>PLACA</th>
                    <th>DATOS</th>
                    <th>CATEGORÍA</th>
                    <th>MODELO</th>
                    <th>MARCA</th>
                    <th>ESTADO</th>
                    <th>PRECIO</th>
                </tr>
                <%
                VehiculoVO vehVO= new VehiculoVO();
                VehiculoDAO vehDao = new VehiculoDAO();
                ArrayList<VehiculoVO>listarVehiculos=vehDao.listar();
                for (int i = 0; i < listarVehiculos.size(); i++) {
                    
                    vehVO = listarVehiculos.get(i);

                %>
                
                <tr>
                    <td><%=vehVO.getVehPlaca()%></td>
                    <td><%=vehVO.getDatId()%></td>
                    <td><%=vehVO.getCatId()%></td>
                    <td><%=vehVO.getVehModelo()%></td>
                    <td><%=vehVO.getVehMarca()%></td>
                    <td><%=vehVO.getVehEstado()%></td>
                    <td><%=vehVO.getVehPrecio()%></td>
                    
                </tr>
                <%}%>
                
            </table> 
          
            
        </form>
    </center>
    </body>
</html>

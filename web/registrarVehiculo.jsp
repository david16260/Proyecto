<%-- 
    Document   : registrarVehiculo
    Created on : 18/05/2021, 07:45:33 AM
    Author     : David
--%>

<%@page import="ModeloVO.DatosPVO"%>
<%@page import="ModeloDAO.DatosDAO"%>
<%@page import="ModeloDAO.VehiculoDAO"%>
<%@page import="ModeloVO.CategoriaVO"%>
<%@page import="ModeloVO.UsuarioVO"%>
<%@page import="ModeloDAO.CategoriaDAO"%>
<%@include file="comun.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Vehiculo</title>
    </head>
    <body>
    <center>
        <h1>Registrar Vehiculo</h1>
        <form method="POST" action="Vehiculo">
            <table>
                <tr>
                    <th>
                        PLACA<br>
                        <input type="text" name="textPlaca"><br><br>
                        DATOS<br>
                      <select name="textDatos">
                            <option value="0">Seleccione...</option>
                            <%  DatosDAO datDAO = new DatosDAO();
                                for (DatosPVO datVO : datDAO.listar()){
                            %>
                            
                            <option value="<%=datVO.getDatId()%>"><%=datVO.getDatNombre()%></option>
                            <%}%>
                        </select><br><br>
                        CATEGORÍA<br>
                        <select name="textCategoria"> 
                            <option value="0">Seleccione...</option>
                            <%                                CategoriaDAO catDAO = new CategoriaDAO();
                                for (CategoriaVO catVO : catDAO.listar()) {


                            %>
                            <option value="<%=catVO.getCatId()%>"><%=catVO.getCatTipo()%></option>
                            <%
                                }
                            %>

                        </select> <br><br>
                        MODELO<br>
                        <input type="text" name="textModelo"><br><br>
                        MARCA<br>
                        <input type="text" name="textMarca"><br><br>
                        ESTADO<br>
                        <input type="text" name="textEstado"><br><br>
                        PRECIO<br>
                        <input type="text" name="textPrecio"><br><br>

                    </th>
                </tr>
            </table>
            <button>Registrar</button>
            <input type="hidden" value="1" name="opcion">      
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
        </div>


    </center>
</body>
</html>

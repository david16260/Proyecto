<%-- 
    Document   : generarReporteParametrizado
    Created on : 22/06/2021, 09:32:47 AM
    Author     : David
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="Util.Conexion"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String nombreReporte = request.getParameter("nombre");
            File reporte = new File(application.getRealPath(nombreReporte));
            Map<String, Object>parametros = new HashMap<String, Object>();
            
            String estado = request.getParameter("estado");
            parametros.put("estado", new String(estado));
            
            Conexion conexionBD = new Conexion();
            Connection conexion = conexionBD.obtenerConexion();
            byte[] reporteBytes = JasperRunManager.runReportToPdf(reporte.getPath(), parametros, conexion);
            response.setContentType("application/pdf");
            response.setHeader("Content-Disposition", "filename=\"reporte_vehiculos.pdf\";");
            response.setContentLength(reporteBytes.length);
            ServletOutputStream salida = response.getOutputStream();
            salida.write(reporteBytes,0,reporteBytes.length);
            salida.flush();
            salida.close();
            %>
    </body>
</html>
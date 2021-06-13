/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.DatosPVO;
import ModeloVO.VehiculoVO;
import Util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author David
 */
public class DatosDAO extends Conexion{
      // Declarar atributos
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;
    
    private String sql;
    
    
    
    public  ArrayList<DatosPVO> listar(){
        
        ArrayList<DatosPVO>listaDatos = new ArrayList<>();
        
        
        try {
            conexion= this.obtenerConexion();
            sql="select * from datospersonales";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();
            while (mensajero.next()) {
                
              DatosPVO datVO = new DatosPVO(mensajero.getString(1), 
                       mensajero.getString(2),mensajero.getString(3));
                
                    listaDatos.add(datVO);
            }
        
        } catch (Exception e) {
              Logger.getLogger(DatosDAO.class.getName()).log(Level.SEVERE, null, e);
        }finally {
            try {
                this.cerrarConexion();
                
            } catch (SQLException e) {
              Logger.getLogger(DatosDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        return listaDatos;
        
}
}

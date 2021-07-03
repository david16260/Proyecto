/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author David
 */
public class UsuarioVO {
    
    private String usuId, usulogin, usuPassword;
    private String rolId, rolTipo;


    public UsuarioVO(String usuId, String rolTipo) {
        this.usuId = usuId;
        this.rolTipo = rolTipo;
    }
    
    public UsuarioVO(){
    }
    public UsuarioVO(String usuId, String usulogin, String usuPassword) {
        this.usuId = usuId;
        this.usulogin = usulogin;
        this.usuPassword = usuPassword;
    }

    

    public String getUsuId() {
        return usuId;
    }

    public void setUsuId(String usuId) {
        this.usuId = usuId;
    }

    public String getUsulogin() {
        return usulogin;
    }

    public void setUsulogin(String usulogin) {
        this.usulogin = usulogin;
    }

    public String getUsuPassword() {
        return usuPassword;
    }

    public void setUsuPassword(String usuPassword) {
        this.usuPassword = usuPassword;
    }
        
     public String getRolId() {
        return rolId;
    }

    public void setRolId(String rolId) {
        this.rolId = rolId;
    }

    public String getRolTipo() {
        return rolTipo;
    }

    public void setRolTipo(String rolTipo) {
        this.rolTipo = rolTipo;
    }
}

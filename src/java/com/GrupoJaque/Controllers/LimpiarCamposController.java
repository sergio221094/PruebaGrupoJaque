
package com.GrupoJaque.Controllers;

import com.GrupoJaque.models.Conectar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class LimpiarCamposController {
    
    private JdbcTemplate jdbcTemplate;
    public LimpiarCamposController()
    {
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    
    @RequestMapping("limpiarCampos.htm")

    public ModelAndView limpiarCampos(HttpServletRequest request) 
    {

        
        int id=Integer.parseInt(request.getParameter("id_usuario"));
        this.jdbcTemplate.update("update usuario set username=?, nombre=?, correo=?, pass=?, telefono=?, arma=NULL, equipo=NULL, meza=NULL, cuarto=NULL, tipodecuenta=1 where id_usuario=? ",
        id);
        return new ModelAndView("redirect:/home.htm");
    }    
}

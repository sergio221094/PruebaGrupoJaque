/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.Controllers;


import com.GrupoJaque.models.Conectar;
import com.GrupoJaque.models.Usuarios;
import com.GrupoJaque.models.UsuariosValidaciones;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("edit.htm")
public class EditController 
{
    UsuariosValidaciones usuariosValidar;
    private JdbcTemplate jdbcTemplate;
     
    
    public EditController() 
    {
        this.usuariosValidar=new UsuariosValidaciones();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form(HttpServletRequest request)
    {
        ModelAndView mav=new ModelAndView();
        int id=Integer.parseInt(request.getParameter("id_usuario"));
        Usuarios datos=this.selectUsuario(id);
        mav.setViewName("edit");
        mav.addObject("usuario",new Usuarios(id,datos.getUsername(),datos.getNombre(),datos.getCorreo(),datos.getPass(),datos.getTelefono(),datos.getArma(),datos.getEquipo(),datos.getMeza(),datos.getCuarto(),datos.getTipodecuenta()));
        return mav;
    }
    @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("usuario") Usuarios u,
                BindingResult result,
                SessionStatus status,
                HttpServletRequest request
        )
    {
        this.usuariosValidar.validate(u, result);
        if(result.hasErrors())
        {
             ModelAndView mav=new ModelAndView();
            int id=Integer.parseInt(request.getParameter("id_usuario"));
            Usuarios datos=this.selectUsuario(id);
            mav.setViewName("edit");
            mav.addObject("usuario",new Usuarios(id,datos.getUsername(),datos.getNombre(),datos.getCorreo(),datos.getPass(),datos.getTelefono(),datos.getArma(),datos.getEquipo(),datos.getMeza(),datos.getCuarto(),datos.getTipodecuenta()));
            return mav;
        }else
        {
            int id=Integer.parseInt(request.getParameter("id_usuario"));
        this.jdbcTemplate.update(
                "update usuario set username=?, nombre=?, correo=?, pass=?, telefono=?, arma=?, equipo=?, meza=?, cuarto=?, tipodecuenta=1 where id_usuario=? ",
         u.getUsername(),u.getNombre(),u.getCorreo(),u.getPass(),u.getTelefono(),u.getArma(),u.getEquipo(),u.getMeza(),u.getCuarto(),id);
         return new ModelAndView("redirect:/adminTodos.htm");
        }
       
    }
    public Usuarios selectUsuario(int id) 
    {
        final Usuarios user = new Usuarios();
        String quer = "SELECT * FROM usuario WHERE id_usuario='" + id+"'";
        return (Usuarios) jdbcTemplate.query
        (
                quer, new ResultSetExtractor<Usuarios>() 
            {
                public Usuarios extractData(ResultSet rs) throws SQLException, DataAccessException {
                    if (rs.next()) {
                        user.setUsername(rs.getString("username"));
                        user.setNombre(rs.getString("nombre"));
                        user.setCorreo(rs.getString("correo"));
                        user.setPass(rs.getString("pass"));
                        user.setTelefono(rs.getString("telefono"));
                        user.setArma(rs.getString("arma"));
                        user.setEquipo(rs.getString("equipo"));
                        user.setMeza(rs.getString("meza"));
                        user.setCuarto(rs.getString("cuarto"));
                    }
                    return user;
                }


            }
        );
    }
}

package com.GrupoJaque.Controllers;

import com.GrupoJaque.models.Conectar;
import com.GrupoJaque.models.Usuarios;
import com.GrupoJaque.models.UsuariosValidaciones;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("addUser.htm")

public class AddUserController {

    UsuariosValidaciones usuariosValidaciones;
    private JdbcTemplate jdbcTemplate;
    
    public AddUserController() 
    {
        this.usuariosValidaciones=new UsuariosValidaciones();
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar() );
    }
    @RequestMapping(method=RequestMethod.GET) 
    public ModelAndView form()
    {
        ModelAndView mav=new ModelAndView();
        mav.setViewName("addUser");
        mav.addObject("usuario",new Usuarios());
        return mav;
    }
       @RequestMapping(method=RequestMethod.POST)
    public ModelAndView form
        (
                @ModelAttribute("usuario") Usuarios u,
                BindingResult result,
                SessionStatus status
        )
    {
        this.usuariosValidaciones.validate(u, result);
        if(result.hasErrors())
        {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("addUser");
            mav.addObject("usuario",new Usuarios());
            return mav; 
        }else
        {
        this.jdbcTemplate.update
        (
        "insert into usuario (username,nombre,correo,pass,telefono ) values (?,?,?,?,?)",
         u.getUsername(),u.getNombre(),u.getCorreo(),u.getPass(),u.getTelefono()
        );
         return new ModelAndView("redirect:/home.htm");
        }
       
    }
    
}

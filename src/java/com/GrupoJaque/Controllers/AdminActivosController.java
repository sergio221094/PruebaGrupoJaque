/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.Controllers;

import com.GrupoJaque.models.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class AdminActivosController {
    
    
    private JdbcTemplate jdbcTemplate;
    
    public AdminActivosController(){
        Conectar con= new Conectar();
        this.jdbcTemplate= new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("adminActivos.htm")
    public ModelAndView adminTodos(){
        ModelAndView mav=new ModelAndView();
        String sql="select * from usuario where arma  is NOT NULL ";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("adminActivos");
        return mav;
    
    }
}

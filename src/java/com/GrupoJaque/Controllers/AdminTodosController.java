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


public class AdminTodosController {
    
    
    private JdbcTemplate jdbcTemplate;
    
    public AdminTodosController(){
        Conectar con= new Conectar();
        this.jdbcTemplate= new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("adminTodos.htm")
    public ModelAndView adminTodos(){
        ModelAndView mav=new ModelAndView();
        String sql="select * from usuario";
        List datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("adminTodos");
        return mav;
    
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author sergi
 */
public class UserController {
        @RequestMapping("user.htm")
        public ModelAndView user(){
        ModelAndView mav=new ModelAndView();
        mav.setViewName("user");
        return mav;
}
}

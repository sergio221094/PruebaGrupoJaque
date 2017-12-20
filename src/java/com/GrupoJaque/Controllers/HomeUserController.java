

package com.GrupoJaque.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class HomeUserController {
        @RequestMapping("homeUser")
        public ModelAndView homeUser(){
        ModelAndView mav=new ModelAndView();
        mav.setViewName("homeUser");
        return mav;
    
    }
}



package com.GrupoJaque.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HomeController {
    @RequestMapping ("home.htm")
    public ModelAndView home(){
        ModelAndView mav=new ModelAndView();
        mav.setViewName("home");
        return mav;
    }
}

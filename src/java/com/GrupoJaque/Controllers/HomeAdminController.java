
package com.GrupoJaque.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

 public class HomeAdminController {
    @RequestMapping("homeAdmin")
    public ModelAndView homeAdmin(){
        ModelAndView mav=new ModelAndView();
        mav.setViewName("homeAdmin");
        return mav;
    
    }
    
}

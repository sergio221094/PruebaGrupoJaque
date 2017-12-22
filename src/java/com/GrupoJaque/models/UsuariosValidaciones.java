/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.GrupoJaque.models;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class UsuariosValidaciones implements Validator{
     private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
   + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
   
     private Pattern pattern;
     private Matcher matcher;
    
    @Override
    public boolean supports(Class<?> type) 
    {
        return Usuarios.class.isAssignableFrom(type);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Usuarios usuario=(Usuarios)o;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username",
        "required.username", "El campo Username es Obligatorio.");
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nombre",
        "required.nombre", "El campo Nombre es Obligatorio.");
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "correo",
        "required.correo", "El campo Correo electrónico es Obligatorio.");
         
         if (!(usuario.getCorreo() != null && usuario.getCorreo().isEmpty()))
        {
            this.pattern = Pattern.compile(EMAIL_PATTERN);
            this.matcher = pattern.matcher(usuario.getCorreo());
             if (!matcher.matches()) {
                errors.rejectValue("correo", "correo.incorrect",
                  "El Correo electrónico "+usuario.getCorreo()+" no es válido");
               }
        }
        
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass",
        "required.pass", "El campo contraseña es Obligatorio.");
         ValidationUtils.rejectIfEmptyOrWhitespace(errors, "telefono",
        "required.telefono", "El campo Teléfono es Obligatorio.");
    }
}

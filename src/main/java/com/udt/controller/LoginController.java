package com.udt.controller;

import com.udt.model.User;
import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Udit S
 */
@Controller
public class LoginController {
    
    @RequestMapping("loginPage")
    public String getLoginPage(@ModelAttribute("user") User user){
        return "loginPage";
    }
    @RequestMapping("loginValidate")
    public String validate(@Valid@ModelAttribute("user") User user,BindingResult br){
        if(br.hasErrors()){
            return "loginPage";
        }
        return "loginPage";
    }
}

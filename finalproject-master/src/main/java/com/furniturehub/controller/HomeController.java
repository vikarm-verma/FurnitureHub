package com.furniturehub.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	/* very first mapping of project from where you can see home page */
    @RequestMapping("/")
    public String home(){
        return "home";
    }

	/* when clicks on login it will invoke and logic will run accordingly */
    @RequestMapping("/login")
    public String login(
            @RequestParam(value="error", required = false)
            String error,
            @RequestParam(value="logout", required = false)
            String logout,
            Model model){

        if(error != null){
            model.addAttribute("error", "Invalid username and password");
        }

        if (logout !=null){
            model.addAttribute("msg", "You have been logged out successfully");
        }

        return "login";
    }

	/* for reaching about us page */
    @RequestMapping("/about")
    public String about(){
        return "about";
    }

	/* for invoking contact us page */
    @RequestMapping("/contactus")
    public String contactus(){
        return "contactus";
    }

} // The End of Class;

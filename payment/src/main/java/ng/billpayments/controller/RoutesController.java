package ng.billpayments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class RoutesController {
    //LOGIN PAGE
//    @RequestMapping("/")
//    public String login() {
//        return "index";
//    }

    //URL MAPPING FOR CUSTOM LOGIN PAGE AND LOGOUT
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
//        if (error != null)
//            model.addAttribute("errorMsg", "Your username and password are invalid.");
//
//        if (logout != null)
//            model.addAttribute("msg", "You have been logged out successfully.");

        return "login";
    }

    //URL MAPPING FOR CUSTOM LOGIN PAGE AND LOGOUT
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }
}

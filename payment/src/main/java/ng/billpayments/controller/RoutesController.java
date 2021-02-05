package ng.billpayments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class RoutesController {
    //LOGIN PAGE
    @RequestMapping("/")
    public String login() {
        return "index";
    }
}

package ng.billpayments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {

    //REQUEST PATH: /admin
    @RequestMapping(value = "")
    public String admin(){
        return "admin/dashboard";
    }
}

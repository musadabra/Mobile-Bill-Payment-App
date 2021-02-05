package ng.billpayments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AdminController {

    //REQUEST PATH: /admin
    @RequestMapping(value = "/dashboard")
    public String dashboard(){
        return "admin/dashboard";
    }

    //REQUEST PATH: /admin/vendor
    @RequestMapping(value = "/vendor")
    public String vendor(){
        return "admin/vendor";
    }

    //REQUEST PATH: /admin/offer
    @RequestMapping(value = "/offer")
    public String offer(){
        return "admin/offer";
    }

    //REQUEST PATH: /complain/offer
    @RequestMapping(value = "/complain")
    public String complain(){
        return "admin/complain";
    }
}

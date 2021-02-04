package ng.billpayments.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("customer")
public class CustomerController {

    //REQUEST PATH: /customer
    @RequestMapping(value = "")
    public String customer(){
        return "customer/dashboard";
    }
}

package ng.billpayments.controller;

import ng.billpayments.message.request.SignUpForm;
import org.dom4j.rule.Mode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

import javax.validation.Valid;

@Controller
@RequestMapping("customer")
public class CustomerController {

    //REQUEST PATH: /customer
    @RequestMapping(value = "")
    public String customer(){
        return "customer/dashboard";
    }

    //USER REGISTRATION
    //@RequestMapping(value = "/register")
    @GetMapping("/register")
    public String showRegistrationForm(WebRequest request, Model model) {
        SignUpForm signUpRequest = new SignUpForm();
        model.addAttribute("user", signUpRequest);
        return "register";
    }

}

package lk.abcd.demoae2project.controller;

import lk.abcd.demoae2project.model.Customer;
import lk.abcd.demoae2project.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @GetMapping ("/read-customer")
    public String showreadCustomerPage(Model model){
        model.addAttribute("customer", customerService.findAll());
        return "readcustomer";
    }
    @GetMapping("/add-customer")
    public String showaddCustomerPage(Model model){
        model.addAttribute("command", new Customer());
        return "addcustomer";
    }

    @PostMapping("/add-customer")
    public String addCustomer(@ModelAttribute("customer") Customer customer){
        customerService.saveCustomer(customer);
        return "redirect:/read-customer";
    }

    @GetMapping("/update-customer/{id}")
    public String showupdateCustomerPage(@PathVariable int id, Model model){
        model.addAttribute("id", id);
        model.addAttribute("command", customerService.findById(id).orElse(null));
        return "updatecustomer";
    }
    @PostMapping("/update-customer/{id}")
    public String updateCustomer(@PathVariable int id, @ModelAttribute("customer") Customer customer){
        customerService.updatecustomer(id, customer);
        return "redirect:/read-customer";
    }

    @GetMapping("/delete-customer/{id}")
    public String deleteCustomer(@PathVariable int id){
        customerService.deleteById(id);
        return "redirect:/read-customer";
    }
}
package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Customer;
import lk.abcd.demoae2project.repository.CustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepositoryobject;
    public List<Customer> findAll(){
        return customerRepositoryobject.findAll();
    }

    public Optional<Customer> findById(int id){
        return customerRepositoryobject.findById(id);
    }

    public Customer saveCustomer(Customer customerobject){
        return customerRepositoryobject.save(customerobject);
    }
    public Customer updatecustomer(int id, Customer customer) {
        Customer updatecustomer = customerRepositoryobject.findById(id).orElse(null);
        if (updatecustomer != null){
            updatecustomer.setFirstname(customer.getFirstname());
            updatecustomer.setLastname(customer.getLastname());
            updatecustomer.setMobile(customer.getMobile());
            updatecustomer.setEmail(customer.getEmail());
            updatecustomer.setPassword(customer.getPassword());
            updatecustomer.setAddress(customer.getAddress());
            updatecustomer.setCountry(customer.getCountry());
            customerRepositoryobject.save(updatecustomer);
        }
        return updatecustomer;

    }
    public void deleteById(int id){
        customerRepositoryobject.deleteById(id);
    }

}


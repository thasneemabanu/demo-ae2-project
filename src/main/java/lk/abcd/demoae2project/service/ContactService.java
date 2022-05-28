package lk.abcd.demoae2project.service;


import lk.abcd.demoae2project.model.Contact;
import lk.abcd.demoae2project.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactService {
    @Autowired
    private ContactRepository contactrepositoryobject;

    public  List<Contact> findAll(){
        return contactrepositoryobject.findAll();
    }

    public Optional<Contact> findById(int id){
        return contactrepositoryobject.findById(id);
    }

    public Contact saveContact(Contact contactobject){
        return contactrepositoryobject.save(contactobject);
    }
    public Contact updatecontact(int id, Contact contact) {
        Contact updatecontact = contactrepositoryobject.findById(id).orElse(null);
        if (updatecontact != null){
            updatecontact.setName(contact.getName());
            updatecontact.setEmail(contact.getEmail());
            updatecontact.setCountry(contact.getCountry());
            contactrepositoryobject.save(updatecontact);
        }
        return updatecontact;

    }
    public void deleteById(int id){
        contactrepositoryobject.deleteById(id);
    }

}

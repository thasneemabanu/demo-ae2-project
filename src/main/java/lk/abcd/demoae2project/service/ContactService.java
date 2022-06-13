package lk.abcd.demoae2project.service;


import lk.abcd.demoae2project.model.Contact;
import lk.abcd.demoae2project.repository.ContactRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**This class contains methods for contact **/
@Service
public class ContactService {
    @Autowired
    private ContactRepository contactrepositoryobject;
    /**
     * Creating LOG
     */
    private static final Logger LOG = LoggerFactory.getLogger(ContactService.class);
    /**
     * <Creating java Docs>
     * This method returns all the contacts
     * @return List<Contact>
     */
    public  List<Contact> findAll(){
        List<Contact> contacts = contactrepositoryobject.findAll();
        LOG.info("Successfully retrieved all the contact details");
        return contacts;
    }

    /**
     * This method returns contact for a given id
     * @param id
     * @return Optional<Contact>
     */
    public Optional<Contact> findById(int id){
        Optional<Contact> contact = contactrepositoryobject.findById(id);
        LOG.info("Successfully retrieved contact details for the given id");
        return contact;
    }

    /**
     * LOG.info is added for the return functions not for void functions
     *
     * this method saves a contact and returns it
     * @param contactobject
     * @return Contact
     */
    public Contact saveContact(Contact contactobject){
        Contact savedContact = contactrepositoryobject.save(contactobject);
        LOG.info("successfully saved contact for the given details.");
        return savedContact;
    }

    /**
     * This method updates a contact of given id
     * @param id
     * @param contact
     * @return
     */
    public Contact updatecontact(int id, Contact contact) {
        LOG.info("updating contact for a given id.");
        Contact updatecontact = contactrepositoryobject.findById(id).orElse(null);
        if (updatecontact != null){
            updatecontact.setName(contact.getName());
            updatecontact.setEmail(contact.getEmail());
            updatecontact.setCountry(contact.getCountry());
            contactrepositoryobject.save(updatecontact);
        }else{
            LOG.warn("No contact details for the given id");
        }
        return updatecontact;

    }

    /**
     * This method deletes a contact for given id
     * @param id
     */
    public void deleteById(int id){
        contactrepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }

}

package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Contact;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class ContactServiceTests {
    @Autowired
    private ContactService contactService;
    @BeforeAll
    void setup() {
        Contact contact = new Contact();
        contact.setName("umar");
        contact.setEmail("example@gmail.com");
        contact.setCountry("Sri Lanka");
        contactService.saveContact(contact);
    }

    @Test
    void testFindAll() {
        Assertions.assertFalse(contactService.findAll().isEmpty());
    }

    @Test
    void testFindByid() {
        Contact contact = contactService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("umar", contact.getName());
    }

    @Test
    void testUpdateContact() {
        Contact contact = contactService.findById(1).orElseThrow(EntityNotFoundException::new);
        contact.setEmail("example@gmail.com");
        Contact updatedContact = contactService.updatecontact(1, contact);
        Assertions.assertEquals("example@gmail.com", updatedContact.getEmail());
    }
    @AfterAll
    void tearDown(){
        contactService.deleteById(1);
    }
}

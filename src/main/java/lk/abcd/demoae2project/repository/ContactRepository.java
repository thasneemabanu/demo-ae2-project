package lk.abcd.demoae2project.repository;

import lk.abcd.demoae2project.model.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactRepository extends JpaRepository <Contact, Integer> {
}

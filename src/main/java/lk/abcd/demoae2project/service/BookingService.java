package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Booking;
import lk.abcd.demoae2project.repository.BookingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookingService {
    @Autowired
    private BookingRepository bookingRepositoryobject;
    public List<Booking> findAll(){
        return bookingRepositoryobject.findAll();
    }

    public Optional<Booking> findById(int id){
        return bookingRepositoryobject.findById(id);
    }

    public Booking saveBooking(Booking bookingobject){
        return bookingRepositoryobject.save(bookingobject);
    }
    public Booking updatebooking(int id, Booking booking) {
        Booking updatebooking = bookingRepositoryobject.findById(id).orElse(null);
        if (updatebooking != null){
            updatebooking.setCustomerfirstname(booking.getCustomerfirstname());
            updatebooking.setCustomerlasstname(booking.getCustomerlasstname());
            updatebooking.setDate(booking.getDate());
            bookingRepositoryobject.save(updatebooking);
        }
        return updatebooking;

    }
    public void deleteById(int id){
        bookingRepositoryobject.deleteById(id);
    }

}
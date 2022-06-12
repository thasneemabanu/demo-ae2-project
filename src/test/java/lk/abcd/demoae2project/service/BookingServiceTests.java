package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Booking;
import lk.abcd.demoae2project.model.Customer;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.persistence.EntityNotFoundException;

@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class BookingServiceTests {
    @Autowired
    private BookingService bookingService;
    @BeforeAll
    void setup() {
        Booking booking = new Booking();
        booking.setCottagename("Winter cottage");
        booking.setCottagetype("full facility");
        booking.setCottageprice("25000");
        booking.setBookedon("10/06/22");
        bookingService.saveBooking(booking);
    }
    @Test
    void testFindAll() {
        Assertions.assertFalse(bookingService.findAll().isEmpty());
    }
    @Test
    void testFindById() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        Assertions.assertEquals("Winter cottage", booking.getCottagename());
    }
    @Test
    void testUpdateBooking() {
        Booking booking = bookingService.findById(1).orElseThrow(EntityNotFoundException::new);
        booking.setCottagetype("full facility");
        Booking updateBooking = bookingService.updatebooking(1, booking);
        Assertions.assertEquals("full facility", updateBooking.getCottagetype());
    }
    @AfterAll
    void tearDown() {
        bookingService.deleteById(1);
    }
}

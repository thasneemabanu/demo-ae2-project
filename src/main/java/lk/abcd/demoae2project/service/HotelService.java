package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Hotel;
import lk.abcd.demoae2project.repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepositoryobject;

    public List<Hotel> findAll(){
        return hotelRepositoryobject.findAll();
    }

    public Optional<Hotel> findById(int id){
        return hotelRepositoryobject.findById(id);
    }

    public Hotel saveHotel(Hotel hotelobject){
        return hotelRepositoryobject.save(hotelobject);
    }
    public Hotel updatehotel(int id, Hotel hotel) {
        Hotel updatehotel = hotelRepositoryobject.findById(id).orElse(null);
        if (updatehotel != null){
            updatehotel.setName(hotel.getName());
            updatehotel.setAddressline1(hotel.getAddressline1());
            updatehotel.setAddressline2(hotel.getAddressline2());
            updatehotel.setCountry(hotel.getCountry());
            updatehotel.setNumberofemployees(hotel.getNumberofemployees());
            hotelRepositoryobject.save(updatehotel);
        }
        return updatehotel;

    }
    public void deleteById(int id){
        hotelRepositoryobject.deleteById(id);
    }

}



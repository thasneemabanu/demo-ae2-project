package lk.abcd.demoae2project.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Entity
public class Booking {
    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer Id;

    @Column(nullable = false,length = 50)
    private String cottagename;

    @Column
    private String cottagetype;

    @Column
    private String cottageprice;

    @Column
    private String bookedon;

}

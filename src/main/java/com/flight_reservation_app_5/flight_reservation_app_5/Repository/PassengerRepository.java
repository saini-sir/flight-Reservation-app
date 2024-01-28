package com.flight_reservation_app_5.flight_reservation_app_5.Repository;

import com.flight_reservation_app_5.flight_reservation_app_5.entity.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassengerRepository extends JpaRepository<Passenger,Long> {
}

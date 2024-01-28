package com.flight_reservation_app_5.flight_reservation_app_5.Repository;

import com.flight_reservation_app_5.flight_reservation_app_5.entity.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
}

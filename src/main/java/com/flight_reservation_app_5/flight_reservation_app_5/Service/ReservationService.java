package com.flight_reservation_app_5.flight_reservation_app_5.Service;

import com.flight_reservation_app_5.flight_reservation_app_5.Dto.ReservationRequest;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Reservation;

public interface ReservationService {

	Reservation bookFlight(ReservationRequest  request);
}

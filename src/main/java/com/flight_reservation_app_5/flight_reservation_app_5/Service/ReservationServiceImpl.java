package com.flight_reservation_app_5.flight_reservation_app_5.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight_reservation_app_5.flight_reservation_app_5.Dto.ReservationRequest;
import com.flight_reservation_app_5.flight_reservation_app_5.Repository.FlightRepository;
import com.flight_reservation_app_5.flight_reservation_app_5.Repository.PassengerRepository;
import com.flight_reservation_app_5.flight_reservation_app_5.Repository.ReservationRepository;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Flight;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Passenger;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Reservation;
import com.flight_reservation_app_5.flight_reservation_app_5.utilities.PDFgenerator;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private PassengerRepository passengerRepo;
	@Autowired
	private FlightRepository flightRepo;
	@Autowired
	private ReservationRepository reservationRepo;

	@Override
	public Reservation bookFlight(ReservationRequest request) {
		
		String filePath = "E:\\tickets\\booking\\";
		
        Passenger passenger = new Passenger();
        passenger.setFirstName(request.getFirstName());
        passenger.setLastName(request.getLastName());
        passenger.setMiddleName(request.getMiddleName());
        passenger.setEmail(request.getEmail());
        passenger.setPhone(request.getPhone());
        passengerRepo.save(passenger);
        long flightId = request.getFlightId();
        Optional<Flight> findById = flightRepo.findById(flightId);
        Flight flight = findById.get();
        
        Reservation reservation = new Reservation();
        reservation.setFlight(flight);
        reservation.setPassenger(passenger);
        reservation.setCheckedIn(false);
        reservation.setNumberOfBags(0);
        reservationRepo.save(reservation); 
        PDFgenerator pdf = new PDFgenerator();
        pdf.PDFgenerator(filePath+reservation.getId()+".pdf", request.getFirstName(), request.getEmail(), 
        		request.getPhone(), flight.getOperatingAirlines(), flight.getDateOfDeparture(),
        		flight.getDepartureCity(), flight.getArrivalCity());
        		return reservation;
	}

}

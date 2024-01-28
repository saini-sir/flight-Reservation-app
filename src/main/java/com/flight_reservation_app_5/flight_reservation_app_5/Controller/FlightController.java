package com.flight_reservation_app_5.flight_reservation_app_5.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flight_reservation_app_5.flight_reservation_app_5.Dto.ReservationRequest;
import com.flight_reservation_app_5.flight_reservation_app_5.Repository.FlightRepository;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Flight;

import java.util.*;

@Controller
public class FlightController {
	
	@Autowired
	private FlightRepository flightRepo;
	
	@RequestMapping("findFlights")
	public String findFlights(@RequestParam("from") String from , @RequestParam("to") String to , 
			@RequestParam("departureDate") @DateTimeFormat(pattern = "MM-dd-yyyy") Date departureDate ,ModelMap modelMap
	) {
		
		List<Flight> findFlights = flightRepo.findFlights(from,to,departureDate);
		modelMap.addAttribute("findFlights", findFlights);
		return "displayFlights";
	}
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") long flightId,ModelMap modelMap ) {
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
		modelMap.addAttribute("flight" ,flight);
		return "showReservation";
	}
	
	
		
	}

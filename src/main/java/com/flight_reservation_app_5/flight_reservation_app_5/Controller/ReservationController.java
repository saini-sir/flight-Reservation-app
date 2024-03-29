package com.flight_reservation_app_5.flight_reservation_app_5.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flight_reservation_app_5.flight_reservation_app_5.Dto.ReservationRequest;
import com.flight_reservation_app_5.flight_reservation_app_5.Service.ReservationService;
import com.flight_reservation_app_5.flight_reservation_app_5.entity.Reservation;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(ReservationRequest request, ModelMap modelMap) {
		Reservation reservationId = reservationService.bookFlight(request);
		modelMap.addAttribute("reservationId",reservationId.getId());
		return "confirmReservation";
	}
	
}

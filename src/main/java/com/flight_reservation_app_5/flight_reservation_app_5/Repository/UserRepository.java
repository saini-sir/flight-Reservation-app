package com.flight_reservation_app_5.flight_reservation_app_5.Repository;

import com.flight_reservation_app_5.flight_reservation_app_5.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User , Long> {

	User findByEmail(String email);
}

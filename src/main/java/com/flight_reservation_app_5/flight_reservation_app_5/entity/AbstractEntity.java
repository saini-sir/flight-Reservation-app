package com.flight_reservation_app_5.flight_reservation_app_5.entity;

import javax.persistence.*;







@MappedSuperclass
public class AbstractEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  long id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


}

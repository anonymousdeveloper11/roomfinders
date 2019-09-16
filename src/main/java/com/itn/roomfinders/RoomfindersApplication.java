package com.itn.roomfinders;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;



@SpringBootApplication
@EnableJpaRepositories
@ComponentScan(basePackages= {"com.itn.roomfinders"})
public class RoomfindersApplication {

	public static void main(String[] args) {
		SpringApplication.run(RoomfindersApplication.class, args);
	}
	
	
}

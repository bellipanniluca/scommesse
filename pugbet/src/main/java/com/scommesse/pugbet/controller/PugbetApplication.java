package com.scommesse.pugbet.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;



@SpringBootApplication
@ComponentScan({"com.scommesse.pugbet.controller"})
@EntityScan("com.scommesse.pugbet.model")
@EnableAutoConfiguration
public class PugbetApplication {

	public static void main(String[] args) {
		SpringApplication.run(PugbetApplication.class, args);
	}

}

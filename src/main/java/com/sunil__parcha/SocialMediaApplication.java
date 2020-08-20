package com.sunil__parcha;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

@SpringBootApplication
@EnableWebSecurity
public class SocialMediaApplication {

	public static void main(String[] args) {
		SpringApplication.run(SocialMediaApplication.class, args);
	}

}

package com.mobitel.mtktweb.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.mobitel.mtktweb")
public class MainApplication extends SpringBootServletInitializer {
	public static void main(String[] args) {
		ApplicationContext ctx = SpringApplication.run(MainApplication.class, args);

	}
}

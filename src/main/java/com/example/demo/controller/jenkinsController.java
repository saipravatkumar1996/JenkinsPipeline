package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class jenkinsController {
	
	@GetMapping("/view")
	public String view() {
		
		return "WEL COME TO JENKINS APPLICATION";
	}

	@GetMapping("/test")
	public String test() {
		
		return "WEL COME TO JENKINS APPLICATION TEST";
	}

}

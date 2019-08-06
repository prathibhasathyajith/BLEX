package com.mobitel.mtktweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mobitel.mtktweb.entity.SearchInfoEntity;

@Controller
public class UserProfileController {
	@GetMapping("/profile")
	public String userProfle(@ModelAttribute SearchInfoEntity searchInfo, Model model) {

//		model.addAttribute("searchInfo", searchInfo);
		// String info = String.format("Customer Submission: id = %d, firstname = %s,
		// lastname = %s",
		// customer.getId(), customer.getFirstname(), customer.getLastname());
		System.out.println("|MTKTWEB Profile POST CNTRL|");
		return "profile";
	}
}

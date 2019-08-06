package com.mobitel.mtktweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mobitel.mtktweb.entity.SearchInfoEntity;

@Controller
public class ReservationController {
	@PostMapping("/reservation")
	public String loadSeatPlan(@ModelAttribute SearchInfoEntity searchInfo, Model model) {
//		model.addAttribute("searchInfo", searchInfo);
		// String info = String.format("Search Submission: From = %s, To = %s, Date =
		// %s", searchInfo.getFromSt(),
		// searchInfo.getToSt(), searchInfo.getDepDate());
		System.out.println("|MTKTWEB Reservation POST CNTRL | ");
		return "reservation";
	}
}

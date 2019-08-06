package com.mobitel.mtktweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.mobitel.mtktweb.entity.SearchInfoEntity;

@Controller
public class SeatPlanController {
	@PostMapping("/seatplan")
	public String loadSeatPlan(@ModelAttribute SearchInfoEntity searchInfo, Model model) {
		model.addAttribute("searchInfo", searchInfo);
		// String info = String.format("Search Submission: From = %s, To = %s, Date =
		// %s", searchInfo.getFromSt(),
		// searchInfo.getToSt(), searchInfo.getDepDate());
		System.out.println("isReturn checked atr seatplan|" + searchInfo.getReturnChecked());
		if(searchInfo.getReturnChecked().equals("1")) {
			System.out.println("isReturn checked at seatplan|" + searchInfo.getReturnChecked());
			model.addAttribute("returnChecked", searchInfo.getReturnChecked());
		}
		
		System.out.println("|MTKTWEB SeatPlan POST CNTRL | ");
		return "seatplan";
	}
}

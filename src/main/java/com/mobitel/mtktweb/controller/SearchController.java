package com.mobitel.mtktweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.mobitel.mtktweb.entity.SearchInfoEntity;

@Controller
public class SearchController {	
	@GetMapping("/index")
	public String showSearchPage(Model model) {
		System.out.println("|MTKTWEB SEARCH GET CNTRL|");
//		model.addAttribute("searchInfo", new SearchInfoEntity());
		return "index";
	}
	
	@GetMapping("/aboutus")
	public String showAboutUs(Model model) {
		System.out.println("|MTKTWEB ABOUT US GET CNTRL|");
		return "aboutus";
	}
	
	@GetMapping("/contactus")
	public String showContactUs(Model model) {
		System.out.println("|MTKTWEB CONTACT US GET CNTRL|");
		return "contactus";
	}
	
	@GetMapping("/faq")
	public String showFaq(Model model) {
		System.out.println("|MTKTWEB FAQ GET CNTRL|");
		return "faq";
	}
	
	@GetMapping("/termsandconditions")
	public String showTermAndConditions(Model model) {
		System.out.println("|MTKTWEB TERM AND CONDITIONS GET CNTRL|");
		return "termsandconditions";
	}
	
	@GetMapping("/thetrain")
	public String showTheTrain(Model model) {
		System.out.println("|MTKTWEB THE TRAIN GET CNTRL|");
		return "thetrain";
	}
	
}

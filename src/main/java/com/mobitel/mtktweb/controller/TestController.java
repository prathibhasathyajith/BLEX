package com.mobitel.mtktweb.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.mobitel.mtktweb.entity.MTRClass;
import com.mobitel.mtktweb.entity.MTRTrain;
import com.mobitel.mtktweb.entity.SearchInfoEntity;
import com.mobitel.mtktweb.entity.SearchResponse;
import com.mobitel.mtktweb.entity.TrainRow;
import com.mobitel.mtktweb.service.WebTicketService;

@Controller
public class TestController {
	@Autowired
	private WebTicketService webTicketService;

	@PostMapping("/testboard")
	public String loadDashBoard(SearchInfoEntity searchInfo, Model model) {
		System.out.println("------------post-----------------");
		model.addAttribute("searchInfo", searchInfo);
		String info = String.format("Search Submission: From = %s, To = %s, Date = %s", searchInfo.getFromSt(),
				searchInfo.getToSt(), searchInfo.getDepDate());
		searchInfo.setDepDate("28-FEB-2018");
		SearchResponse searchResponse = null;
		try {
			searchResponse = webTicketService.geSearchResult(searchInfo);
		} catch (Exception e) {

		}
		List<TrainRow> trainRowForward = trinRowMApper(searchResponse.getObj().getForwardTrain());
		List<TrainRow> trainRowReturn = trinRowMApper(searchResponse.getObj().getReturnTrain());

		System.out.println("-----set value-----");

		model.addAttribute("trainRowForward", trainRowForward);
		model.addAttribute("trainRowReturn", trainRowReturn);
		System.out.println("|MTKTWEB Dashboard POST CNTRL | " + info);
		return "dashboard";
	}

	private List<TrainRow> trinRowMApper(List<MTRTrain> TrainList) {
		ArrayList<TrainRow> trainRows = new ArrayList<TrainRow>();
		for (int i = 0; i < TrainList.size(); i++) {
			MTRTrain mtrTrain = TrainList.get(i);
			ArrayList<MTRClass> mtrClasses = (ArrayList<MTRClass>) mtrTrain.getClassList();
			for (int j = 0; j < mtrClasses.size(); j++) {
				MTRClass mtrClass = mtrClasses.get(j);
				TrainRow trainRow = new TrainRow();
				trainRow.setClassCode(mtrClass.getClassABBR());
				trainRow.setAvailable(mtrClass.getAvailableSeats() + "");
				if (mtrClass.getClassCode() == 6) {
					trainRow.setPrice("600.00");
				} else if (mtrClass.getClassCode() == 8) {
					trainRow.setPrice("400.00");
				} else if (mtrClass.getClassCode() == 1) {
					trainRow.setPrice("1200.00");
				} else {
					trainRow.setPrice("1200.00");
				}
				// trainRow.setdTime(mtrTrain.getDepTime());
				// trainRow.setaTime(mtrTrain.getArrivalTime());

				trainRow.setSourceFromTime(mtrTrain.getDepTime());
				trainRow.setEndToTime(mtrTrain.getArrivalTime());

				trainRow.setName(mtrTrain.getTrainName());
				trainRow.setCode(mtrTrain.getTrainCode() + "");
				trainRow.setFromStation(mtrTrain.getStartPoint());
				trainRow.setToStation(mtrTrain.getEndPoint());

				// trainRow.setSourceFromTime(mtrTrain.getSourceFromTime());
				// trainRow.setEndToTime(mtrTrain.getSourceToTime());

				trainRow.setdTime(mtrTrain.getSourceFromTime());
				trainRow.setaTime(mtrTrain.getSourceToTime());

				trainRows.add(trainRow);
			}
		}
		return trainRows;
	}

	@GetMapping("/testboard")
	public String redirectDashBoard(SearchInfoEntity searchInfo, Model model) {
		System.out.println("-----------get------------------");
		return "index";
	}
}

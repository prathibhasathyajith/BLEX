package com.mobitel.mtktweb.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mobitel.mtktweb.constant.Constant;
import com.mobitel.mtktweb.entity.Station;
import com.mobitel.mtktweb.service.WebTicketService;

@Controller
@RequestMapping("/api")
public class AjaxController {

    @Autowired
    private WebTicketService webTicketService;

    @RequestMapping(value = Constant.GET_FROM_STATIONS, method = RequestMethod.POST, consumes = {"application/json; charset=UTF-8"}, produces = {"application/json; charset=UTF-8"})
    public
    @ResponseBody
    List<Station> getFromStation() {
        System.out.println("-----------getFromStation---------");
        List<Station> stationList = null;
        try {
            stationList = webTicketService.getAllStation();
        } catch (Exception e) {

        }
        System.out.println("-----------getFromStation end---------"+stationList.size());
        return stationList;
    }

    @RequestMapping(value = Constant.GET_TO_STATIONS, method = RequestMethod.POST, consumes = {"application/json; charset=UTF-8"}, produces = {"application/json; charset=UTF-8"})
    public
    @ResponseBody
    List<Station> getToStation(@RequestBody String fromStation) {
        System.out.println("-----------getToStation---------");
        List<Station> stationList = null;
        try {
            stationList = webTicketService.geStationByFrom(fromStation);
        } catch (Exception e) {

        }
        System.out.println("-----------getToStation end---------"+stationList.size());
        return stationList;
    }





    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome() {

        return "Test";

    }

}

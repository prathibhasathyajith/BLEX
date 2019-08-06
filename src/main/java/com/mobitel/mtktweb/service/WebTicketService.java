package com.mobitel.mtktweb.service;

import com.mobitel.mtktweb.entity.SearchInfoEntity;
import com.mobitel.mtktweb.entity.SearchResponse;
import com.mobitel.mtktweb.entity.Station;

import java.util.List;

public interface WebTicketService {

	public List<Station> getAllStation();

	public List<Station> geStationByFrom(String fromStation);

	public SearchResponse geSearchResult(SearchInfoEntity searchInfo);
}

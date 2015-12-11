package org.foxriversports.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.foxriversports.model.League;
import org.foxriversports.services.LeagueService;
import org.springframework.stereotype.Service;

@Service(value = LeagueService.SERVICE_NAME)
public class LeagueServiceImpl implements LeagueService {

	@Override
	public List<League> getLeagues(String code) {
		return new ArrayList<League>();
	}

}

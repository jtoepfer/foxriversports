package org.foxriversports.services;

import java.util.List;

import org.foxriversports.model.League;

public interface LeagueService {

	static final String SERVICE_NAME = "leagueService";

	/**
	 * 
	 * @param code
	 * @return
	 */
	List<League> getLeagues(String code);
}

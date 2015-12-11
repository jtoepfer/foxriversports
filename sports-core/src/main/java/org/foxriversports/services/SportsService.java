package org.foxriversports.services;

import java.util.List;

import org.foxriversports.model.Sport;

public interface SportsService {

	static final String SERVICE_NAME = "sportsService";

	/**
	 * Returns a list of all the sports in the system.
	 * @return
	 */
	List<Sport> getSports();

	/**
	 * Returns a single sport based upon the sport code
	 * that is supplied.
	 * @param code the sport code
	 * @return
	 */
	Sport getSport(String code);

	/**
	 * 
	 * @param code
	 * @return
	 */
	boolean removeSport(String code);
}

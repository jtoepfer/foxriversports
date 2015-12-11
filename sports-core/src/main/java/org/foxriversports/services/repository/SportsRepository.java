package org.foxriversports.services.repository;

import java.util.List;

import org.foxriversports.model.Sport;

/**
 * 
 * @author jtoepfer
 */
public interface SportsRepository {

	static final String REPOSITORY_NAME = "sportsRepository";

	List<Sport> getAllSports();

	Sport getSportByCode(String code);
}
